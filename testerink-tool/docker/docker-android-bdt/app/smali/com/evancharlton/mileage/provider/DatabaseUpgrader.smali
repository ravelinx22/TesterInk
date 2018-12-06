.class public Lcom/evancharlton/mileage/provider/DatabaseUpgrader;
.super Ljava/lang/Object;
.source "DatabaseUpgrader.java"


# static fields
.field private static final BUILDER:Ljava/lang/StringBuilder;

.field private static final TAG:Ljava/lang/String; = "DatabaseUpgrader"

.field private static final V1_DATABASE:I = 0x3

.field private static final V2_DATABASE:I = 0x4

.field private static final V3_DATABASE:I = 0x5

.field private static sDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static backupExistingTables()Z
    .locals 8

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fillups"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "vehicles"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "maintenance_intervals"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 118
    .local v0, "tables":[Ljava/lang/String;
    :try_start_0
    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 119
    .local v5, "table":Ljava/lang/String;
    sget-object v6, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v7, "ALTER TABLE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " RENAME TO OLD_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->flush()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v5    # "table":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return v3

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v3, "DatabaseUpgrader"

    const-string v4, "Unable to backup existing tables!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    return v2
.end method

.method private static cleanUpOldTables()Z
    .locals 1

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method private static createNewTables()Z
    .locals 10

    .line 131
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/evancharlton/mileage/provider/tables/ContentTable;

    new-instance v1, Lcom/evancharlton/mileage/provider/tables/FillupsTable;

    invoke-direct {v1}, Lcom/evancharlton/mileage/provider/tables/FillupsTable;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;

    invoke-direct {v1}, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/evancharlton/mileage/provider/tables/FieldsTable;

    invoke-direct {v1}, Lcom/evancharlton/mileage/provider/tables/FieldsTable;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;

    invoke-direct {v1}, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;-><init>()V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lcom/evancharlton/mileage/provider/tables/VehicleTypesTable;

    invoke-direct {v1}, Lcom/evancharlton/mileage/provider/tables/VehicleTypesTable;-><init>()V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;

    invoke-direct {v1}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;-><init>()V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;

    invoke-direct {v1}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;-><init>()V

    const/4 v4, 0x6

    aput-object v1, v0, v4

    new-instance v1, Lcom/evancharlton/mileage/provider/tables/CacheTable;

    invoke-direct {v1}, Lcom/evancharlton/mileage/provider/tables/CacheTable;-><init>()V

    const/4 v4, 0x7

    aput-object v1, v0, v4

    .line 139
    .local v0, "tables":[Lcom/evancharlton/mileage/provider/tables/ContentTable;
    :try_start_0
    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 140
    .local v5, "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    invoke-virtual {v5}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->create()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->exec(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v5, v3}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->init(Z)[Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, "upgradeSql":[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 143
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 144
    .local v9, "sql":Ljava/lang/String;
    invoke-static {v9}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->exec(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v9    # "sql":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 139
    .end local v5    # "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    .end local v6    # "upgradeSql":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 148
    :cond_1
    return v3

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "DatabaseUpgrader"

    const-string v4, "Unable to create new table!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 149
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "DatabaseUpgrader"

    const-string v4, "Unable to create new table!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 154
    :goto_2
    return v2
.end method

.method private static final exec(Ljava/lang/String;)V
    .locals 1
    .param p0, "query"    # Ljava/lang/String;

    .line 104
    invoke-static {p0}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->log(Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private static final flush()V
    .locals 2

    .line 99
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->exec(Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 101
    return-void
.end method

.method private static final log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 109
    const-string v0, "DatabaseUpgrader"

    invoke-static {v0, p0}, Lcom/evancharlton/mileage/util/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method private static migrateOldData()Z
    .locals 3

    .line 160
    :try_start_0
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "INSERT INTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vehicles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "make"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "model"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "year"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "default_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "vehicle_type_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, ") SELECT make, model, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "CASE WHEN title IS NULL OR title=\"\" THEN (year||\" \"||make||\" \"||model) ELSE title END AS d_title, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "year, def, \'1\' FROM OLD_vehicles;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->flush()V

    .line 175
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "INSERT INTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fillups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "economy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "longitude"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "odometer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "is_partial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "restart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "total_cost"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "price"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "vehicle_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "volume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, ") SELECT date, \'0\', latitude, longitude, mileage, is_partial, restart, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "(cost * amount), cost, vehicle_id, amount FROM OLD_fillups;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->flush()V

    .line 192
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "INSERT INTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fillups_fields"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "fillup_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "template_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, ") SELECT _id, \'1\', comment FROM OLD_fillups;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->flush()V

    .line 200
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "UPDATE fillups SET vehicle_id = (SELECT vehicles._id FROM vehicles, OLD_vehicles WHERE vehicles.title = OLD_vehicles.title AND OLD_vehicles._id = vehicle_id)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->flush()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    const/4 v0, 0x1

    return v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "DatabaseUpgrader"

    const-string v2, "Unable to migrate data!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    const/4 v1, 0x0

    return v1
.end method

.method public static upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    sput-object p0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    goto/16 :goto_1

    .line 44
    :pswitch_0
    const-string v0, "ALTER TABLE fillups ADD COLUMN is_partial INTEGER;"

    invoke-static {v0}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->exec(Ljava/lang/String;)V

    .line 47
    const-string v0, "ALTER TABLE fillups ADD COLUMN restart INTEGER;"

    invoke-static {v0}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->exec(Ljava/lang/String;)V

    .line 50
    const-string v0, "ALTER TABLE vehicles ADD COLUMN distance INTEGER DEFAULT -1;"

    invoke-static {v0}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->exec(Ljava/lang/String;)V

    .line 53
    const-string v0, "ALTER TABLE vehicles ADD COLUMN volume INTEGER DEFAULT -1;"

    invoke-static {v0}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->exec(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE maintenance_intervals ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "creation_date INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "creation_odometer DOUBLE,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "description TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "interval_distance DOUBLE,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "interval_duration INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "vehicle_id INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "is_repeating INTEGER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->flush()V

    .line 69
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE version ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, "version INTEGER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    sget-object v0, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->BUILDER:Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->flush()V

    .line 75
    :pswitch_1
    const-string v0, "ALTER TABLE fillups ADD COLUMN economy DOUBLE;"

    invoke-static {v0}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->exec(Ljava/lang/String;)V

    .line 79
    :pswitch_2
    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->backupExistingTables()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->createNewTables()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->migrateOldData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->cleanUpOldTables()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "DatabaseUpgrader"

    const-string v1, "Completed migration!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_0
    const-string v0, "DatabaseUpgrader"

    const-string v1, "Unable to complete migration!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    nop

    .line 92
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 95
    goto :goto_2

    .line 89
    :goto_1
    invoke-static {p0}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "DatabaseUpgrader"

    const-string v2, "Couldn\'t upgrade database!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
