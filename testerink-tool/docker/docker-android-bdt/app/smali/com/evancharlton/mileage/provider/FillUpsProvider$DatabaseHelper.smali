.class Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FillUpsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/provider/FillUpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    const-string v0, "mileage.db"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 104
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 108
    const-string v0, "FillupsProvider"

    const-string v1, "Creating database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/provider/tables/ContentTable;

    .line 111
    .local v1, "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    :try_start_0
    invoke-virtual {v1}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->create()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "sql":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 117
    .end local v2    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "DatabaseHelper"

    const-string v4, "Could not create table"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 115
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "DatabaseHelper"

    const-string v4, "Could not create table"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v1    # "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    nop

    .line 120
    :goto_2
    goto :goto_0

    .line 122
    :cond_1
    invoke-static {p1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->initTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 123
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 127
    invoke-static {p1}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 128
    return-void
.end method
