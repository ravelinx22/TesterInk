.class public Lcom/evancharlton/mileage/provider/tables/FillupsTable;
.super Lcom/evancharlton/mileage/provider/tables/ContentTable;
.source "FillupsTable.java"


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field private static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.evancharlton.fillup"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.evancharlton.fillup"

.field public static final CSV_PROJECTION:[Ljava/lang/String;

.field private static final FILLUPS:I = 0xa

.field private static final FILLUP_ID:I = 0xb

.field public static final PLAINTEXT:[I

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "fillups"

.field public static final URI:Ljava/lang/String; = "fillups/"


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 31
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "fillups/"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    .line 33
    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "total_cost"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "price"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "volume"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "odometer"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "economy"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "vehicle_id"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "timestamp"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "latitude"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "longitude"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "is_partial"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "restart"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    sput-object v1, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    .line 39
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "total_cost"

    aput-object v2, v1, v4

    const-string v2, "price"

    aput-object v2, v1, v5

    const-string v2, "volume"

    aput-object v2, v1, v6

    const-string v2, "odometer"

    aput-object v2, v1, v7

    const-string v2, "economy"

    aput-object v2, v1, v8

    const-string v2, "vehicle_id"

    aput-object v2, v1, v9

    const-string v2, "timestamp"

    aput-object v2, v1, v10

    const-string v2, "latitude"

    aput-object v2, v1, v11

    const-string v2, "longitude"

    aput-object v2, v1, v12

    const-string v2, "is_partial"

    aput-object v2, v1, v13

    const-string v2, "restart"

    aput-object v2, v1, v14

    sput-object v1, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->CSV_PROJECTION:[Ljava/lang/String;

    .line 45
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PLAINTEXT:[I

    return-void

    :array_0
    .array-data 4
        0x7f080017
        0x7f08001f
        0x7f080020
        0x7f080022
        0x7f08001c
        0x7f080016
        0x7f080021
        0x7f080015
        0x7f080018
        0x7f080019
        0x7f08001d
        0x7f08001e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/evancharlton/mileage/provider/tables/ContentTable;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDaoType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/evancharlton/mileage/dao/Dao;",
            ">;"
        }
    .end annotation

    .line 54
    const-class v0, Lcom/evancharlton/mileage/dao/Fillup;

    return-object v0
.end method

.method public getDefaultSortOrder()Ljava/lang/String;
    .locals 1

    .line 126
    const-string v0, "odometer desc"

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .line 131
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "fillups"

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 70
    packed-switch p1, :pswitch_data_0

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 74
    :pswitch_0
    const-string v0, "vnd.android.cursor.item/vnd.evancharlton.fillup"

    return-object v0

    .line 72
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/vnd.evancharlton.fillup"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Z)[Ljava/lang/String;
    .locals 1
    .param p1, "isUpgrade"    # Z

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .line 81
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 85
    const-wide/16 v0, -0x1

    return-wide v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public query(ILandroid/net/Uri;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "queryBuilder"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "projection"    # [Ljava/lang/String;

    .line 91
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 100
    const/4 v0, 0x0

    return v0

    .line 93
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillups._id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 96
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 97
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1}, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->buildProjectionMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 98
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerUris()V
    .locals 2

    .line 64
    const-string v0, "fillups/"

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 65
    const-string v0, "fillups/#"

    const/16 v1, 0xb

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method public update(ILandroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "match"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;

    .line 106
    packed-switch p1, :pswitch_data_0

    .line 116
    const/4 v0, -0x1

    return v0

    .line 110
    :pswitch_0
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    .local v0, "fillUpId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "clause":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, p4, v1, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2

    .line 108
    .end local v0    # "fillUpId":Ljava/lang/String;
    .end local v1    # "clause":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p4, p5, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
