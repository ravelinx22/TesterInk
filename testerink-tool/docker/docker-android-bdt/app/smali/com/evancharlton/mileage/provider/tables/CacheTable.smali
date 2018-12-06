.class public Lcom/evancharlton/mileage/provider/tables/CacheTable;
.super Lcom/evancharlton/mileage/provider/tables/ContentTable;
.source "CacheTable.java"


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field private static final CACHES:I = 0x50

.field private static final CACHE_ID:I = 0x51

.field private static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.evancharlton.statistic"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.evancharlton.statistics"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final URI:Ljava/lang/String; = "cache"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "cache"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/CacheTable;->BASE_URI:Landroid/net/Uri;

    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "item"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "key"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "value"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "is_valid"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "statistics_group"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "statistics_order"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/CacheTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
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

    .line 35
    const-class v0, Lcom/evancharlton/mileage/dao/CachedValue;

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/CacheTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "cache"

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 45
    packed-switch p1, :pswitch_data_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 49
    :pswitch_0
    const-string v0, "vnd.android.cursor.item/vnd.evancharlton.statistic"

    return-object v0

    .line 47
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/vnd.evancharlton.statistics"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Z)[Ljava/lang/String;
    .locals 1
    .param p1, "isUpgrade"    # Z

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .line 61
    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    .line 65
    const-wide/16 v0, -0x1

    return-wide v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/CacheTable;->getTableName()Ljava/lang/String;

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

    .line 71
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 79
    const/4 v0, 0x0

    return v0

    .line 73
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 75
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/CacheTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 76
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/CacheTable;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1}, Lcom/evancharlton/mileage/provider/tables/CacheTable;->buildProjectionMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 77
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerUris()V
    .locals 2

    .line 84
    const-string v0, "cache"

    const/16 v1, 0x50

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 85
    const-string v0, "cache/*"

    const/16 v1, 0x51

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 86
    return-void
.end method

.method public update(ILandroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "match"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;

    .line 91
    packed-switch p1, :pswitch_data_0

    .line 97
    const/4 v0, -0x1

    return v0

    .line 93
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/CacheTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p4, p5, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 95
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/CacheTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p4, p5, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
