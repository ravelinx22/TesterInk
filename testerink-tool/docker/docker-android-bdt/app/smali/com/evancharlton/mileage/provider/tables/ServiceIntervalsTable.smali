.class public Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;
.super Lcom/evancharlton/mileage/provider/tables/ContentTable;
.source "ServiceIntervalsTable.java"


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field private static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.evancharlton.interval"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.evancharlton.interval"

.field public static PROJECTION:[Ljava/lang/String; = null

.field private static final SERVICE_INTERVALS:I = 0x46

.field private static final SERVICE_INTERVAL_ID:I = 0x47

.field public static final TABLE_NAME:Ljava/lang/String; = "service_intervals"

.field public static final URI:Ljava/lang/String; = "intervals/"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "intervals/"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;->BASE_URI:Landroid/net/Uri;

    .line 30
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "title"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "description"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "start_timestamp"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "start_odometer"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "service_interval_template_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "vehicle_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "duration"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "distance"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;->PROJECTION:[Ljava/lang/String;

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

    .line 39
    const-class v0, Lcom/evancharlton/mileage/dao/ServiceInterval;

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .line 113
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "service_intervals"

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 49
    packed-switch p1, :pswitch_data_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 53
    :pswitch_0
    const-string v0, "vnd.android.cursor.item/vnd.evancharlton.interval"

    return-object v0

    .line 51
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/vnd.evancharlton.interval"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Z)[Ljava/lang/String;
    .locals 1
    .param p1, "isUpgrade"    # Z

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .line 65
    const/16 v0, 0x46

    if-eq p1, v0, :cond_0

    .line 69
    const-wide/16 v0, -0x1

    return-wide v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;->getTableName()Ljava/lang/String;

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

    .line 75
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    return v0

    .line 81
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 82
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;->buildProjectionMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 85
    return v0

    .line 77
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 78
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;->buildProjectionMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 79
    return v0

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerUris()V
    .locals 2

    .line 92
    const-string v0, "intervals/"

    const/16 v1, 0x46

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 93
    const-string v0, "intervals/#"

    const/16 v1, 0x47

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method public update(ILandroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "match"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;

    .line 99
    packed-switch p1, :pswitch_data_0

    .line 108
    const/4 v0, -0x1

    return v0

    .line 101
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    .line 103
    invoke-virtual {p4, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 101
    invoke-virtual {p2, v0, p4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 106
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p4, p5, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
