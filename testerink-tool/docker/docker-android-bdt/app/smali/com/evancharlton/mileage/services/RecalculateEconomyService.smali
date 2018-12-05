.class public Lcom/evancharlton/mileage/services/RecalculateEconomyService;
.super Landroid/app/IntentService;
.source "RecalculateEconomyService.java"


# static fields
.field public static final CALCULATION_FINISHED:Ljava/lang/String; = "com.evancharlton.mileage.services.RecalculateEconomyService.CALCULATION_FINISHED"

.field public static final EXTRA_AVERAGE_ECONOMY:Ljava/lang/String; = "average_economy"

.field private static final TAG:Ljava/lang/String; = "Mileage"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    const-class v0, Lcom/evancharlton/mileage/services/RecalculateEconomyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static run(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/services/RecalculateEconomyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "_id"

    .line 27
    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v2

    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 28
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .line 36
    const-string v0, "_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 37
    .local v3, "vehicleId":J
    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 38
    const-string v0, "Mileage"

    const-string v1, "No vehicle ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 42
    :cond_0
    invoke-static {p0, v3, v4}, Lcom/evancharlton/mileage/dao/Vehicle;->loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v0

    .line 43
    .local v0, "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    .line 44
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v9, v11

    .line 47
    .local v9, "args":[Ljava/lang/String;
    const-string v2, "vehicle_id = ?"

    .line 49
    .local v2, "selection":Ljava/lang/String;
    nop

    .line 50
    invoke-virtual {p0}, Lcom/evancharlton/mileage/services/RecalculateEconomyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    sget-object v7, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    const-string v10, "odometer asc"

    move-object v8, v2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 52
    .local v5, "cursor":Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-gt v6, v1, :cond_1

    .line 53
    const-string v1, "Mileage"

    const-string v6, "Not enough fillups to calculate economy"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 57
    :cond_1
    const-string v1, "Mileage"

    const-string v6, "Recalculating"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v1, Lcom/evancharlton/mileage/dao/FillupSeries;

    new-array v6, v11, [Lcom/evancharlton/mileage/dao/Fillup;

    invoke-direct {v1, v6}, Lcom/evancharlton/mileage/dao/FillupSeries;-><init>([Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 61
    .local v1, "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 62
    new-instance v6, Lcom/evancharlton/mileage/dao/Fillup;

    invoke-direct {v6, v5}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/database/Cursor;)V

    .line 63
    .local v6, "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    invoke-virtual {v1, v6}, Lcom/evancharlton/mileage/dao/FillupSeries;->add(Lcom/evancharlton/mileage/dao/Fillup;)Z

    .line 65
    invoke-virtual {v6}, Lcom/evancharlton/mileage/dao/Fillup;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 66
    invoke-static {v0, v1}, Lcom/evancharlton/mileage/math/Calculator;->fillupEconomy(Lcom/evancharlton/mileage/dao/Vehicle;Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v7

    .line 67
    .local v7, "economy":D
    invoke-virtual {v6}, Lcom/evancharlton/mileage/dao/Fillup;->getEconomy()D

    move-result-wide v10

    cmpl-double v12, v7, v10

    if-eqz v12, :cond_2

    .line 68
    invoke-virtual {v6, v7, v8}, Lcom/evancharlton/mileage/dao/Fillup;->setEconomy(D)V

    .line 70
    .end local v7    # "economy":D
    :cond_2
    goto :goto_1

    .line 71
    :cond_3
    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/evancharlton/mileage/dao/Fillup;->setEconomy(D)V

    .line 75
    :goto_1
    :try_start_0
    invoke-virtual {v6, p0}, Lcom/evancharlton/mileage/dao/Fillup;->saveIfChanged(Landroid/content/Context;)Z
    :try_end_0
    .catch Lcom/evancharlton/mileage/exceptions/InvalidFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    nop

    .line 79
    .end local v6    # "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    goto :goto_0

    .line 76
    .restart local v6    # "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    :catch_0
    move-exception v7

    .line 77
    .local v7, "e":Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
    return-void

    .line 81
    .end local v6    # "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    .end local v7    # "e":Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
    :cond_4
    invoke-static {v0, v1}, Lcom/evancharlton/mileage/math/Calculator;->averageEconomy(Lcom/evancharlton/mileage/dao/Vehicle;Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v6

    .line 83
    .local v6, "avgEconomy":D
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 85
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.evancharlton.mileage.services.RecalculateEconomyService.CALCULATION_FINISHED"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evancharlton/mileage/services/RecalculateEconomyService;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v10, "average_economy"

    invoke-virtual {v8, v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/evancharlton/mileage/services/RecalculateEconomyService;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    return-void
.end method
