.class Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;
.super Ljava/lang/Thread;
.source "VehicleStatisticsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    .line 75
    iput-object p1, p0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;->this$0:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 78
    move-object/from16 v0, p0

    const-string v1, "VehicleStatisticsAdapter"

    const-string v2, "Erasing the cache ..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v1, "item = ?"

    .line 81
    .local v1, "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;->this$0:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    .line 82
    invoke-static {v4}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->access$000(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 84
    .local v3, "selectionArgs":[Ljava/lang/String;
    iget-object v4, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;->this$0:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    invoke-static {v4}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->access$100(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/evancharlton/mileage/provider/tables/CacheTable;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 86
    const-string v4, "VehicleStatisticsAdapter"

    const-string v6, "Building new values ..."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v4, Lcom/evancharlton/mileage/provider/Statistics;->STATISTICS:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ContentValues;

    .line 89
    .local v4, "values":[Landroid/content/ContentValues;
    iget-object v6, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;->this$0:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    invoke-static {v6}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->access$200(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 90
    .local v6, "length":I
    iget-object v7, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;->this$0:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    invoke-static {v7}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->access$000(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v7

    .line 91
    .local v7, "vehicleId":J
    const/4 v9, 0x0

    .line 92
    .local v9, "num":I
    nop

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 93
    iget-object v10, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;->this$0:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    invoke-static {v10}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->access$200(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;

    .line 94
    .local v10, "holder":Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;
    iget v11, v10, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;->type:I

    if-nez v11, :cond_0

    .line 95
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v11, "v":Landroid/content/ContentValues;
    const-string v12, "item"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    const-string v12, "is_valid"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 98
    const-string v12, "value"

    iget-object v13, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;->this$0:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    invoke-static {v13}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->access$300(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)Ljava/util/HashMap;

    move-result-object v13

    iget-object v14, v10, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;->key:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v12, "key"

    iget-object v13, v10, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;->key:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    add-int/lit8 v12, v9, 0x1

    .local v12, "num":I
    aput-object v11, v4, v9

    .line 92
    move v9, v12

    .end local v10    # "holder":Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$StatisticHolder;
    .end local v11    # "v":Landroid/content/ContentValues;
    .end local v12    # "num":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 103
    .end local v5    # "i":I
    :cond_1
    array-length v2, v4

    if-eq v9, v2, :cond_2

    .line 104
    const-string v2, "VehicleStatisticsAdapter"

    const-string v5, "Not writing to the database because we don\'t have all the stats"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 106
    :cond_2
    const-string v2, "VehicleStatisticsAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Writing "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " records to the database ..."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 108
    .local v10, "start":J
    iget-object v2, v0, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter$1;->this$0:Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    invoke-static {v2}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->access$100(Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Lcom/evancharlton/mileage/provider/tables/CacheTable;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    .line 110
    .local v12, "diff":J
    long-to-double v14, v12

    const-wide v16, 0x408f400000000000L    # 1000.0

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double v14, v14, v16

    .line 111
    .local v14, "seconds":D
    const-string v2, "VehicleStatisticsAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Caching of "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " records complete! ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " seconds)"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v10    # "start":J
    .end local v12    # "diff":J
    .end local v14    # "seconds":D
    :goto_1
    return-void
.end method
