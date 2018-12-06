.class public Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;
.super Lcom/evancharlton/mileage/provider/tables/ContentTable;
.source "ServiceIntervalTemplatesTable.java"


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field private static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.evancharlton.interval_template"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.evancharlton.interval_template"

.field public static final PROJECTION:[Ljava/lang/String;

.field private static final SERVICE_TEMPLATES:I = 0x3c

.field private static final SERVICE_TEMPLATE_ID:I = 0x3d

.field public static final TEMPLATES:[Landroid/content/ContentValues;

.field public static final URI:Ljava/lang/String; = "intervals/templates"


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 25
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "intervals/templates"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->BASE_URI:Landroid/net/Uri;

    .line 33
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "title"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "description"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "distance"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "duration"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "vehicle_type"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sput-object v1, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->PROJECTION:[Ljava/lang/String;

    .line 40
    const/4 v1, 0x7

    new-array v1, v1, [Landroid/content/ContentValues;

    const-string v9, "Transmission fluid"

    const-string v10, "Replace transmission fluid"

    .line 41
    const-wide/16 v11, 0x61a8

    const-wide/16 v13, 0x19

    invoke-static/range {v9 .. v14}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->createInterval(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v9, "Timing belt"

    const-string v10, "Replace timing belt"

    .line 42
    const-wide/32 v11, 0xea60

    const-wide/16 v13, 0x3c

    invoke-static/range {v9 .. v14}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->createInterval(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v9, "Fuel filter"

    const-string v10, "Replace fuel filter"

    .line 43
    const-wide/16 v11, 0x61a8

    const-wide/16 v13, 0x19

    invoke-static/range {v9 .. v14}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->createInterval(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v9, "Power steering fluid"

    const-string v10, "Replace power steering fluid"

    .line 44
    const-wide/16 v11, 0x7530

    const-wide/16 v13, 0x1e

    invoke-static/range {v9 .. v14}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->createInterval(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v9, "Replace air filter"

    const-string v10, "Replace air filter"

    .line 45
    const-wide/16 v11, 0x3a98

    const-wide/16 v13, 0xf

    invoke-static/range {v9 .. v14}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->createInterval(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v9, "Oil change (synthetic)"

    const-string v10, "Synthetic oil change"

    .line 46
    const-wide/16 v11, 0x3e8

    const-wide/16 v13, 0xa

    invoke-static/range {v9 .. v14}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->createInterval(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v9, "Oil change (standard)"

    const-string v10, "Standard oil change"

    .line 47
    const-wide/16 v11, 0xbb8

    const-wide/16 v13, 0x3

    invoke-static/range {v9 .. v14}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->createInterval(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v2

    aput-object v2, v1, v0

    sput-object v1, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->TEMPLATES:[Landroid/content/ContentValues;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/evancharlton/mileage/provider/tables/ContentTable;-><init>()V

    return-void
.end method

.method private static createInterval(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;
    .locals 4
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "miles"    # J
    .param p4, "months"    # J

    .line 92
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 93
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "distance"

    invoke-static {p2, p3}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->miles(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    const-string v1, "duration"

    invoke-static {p4, p5}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->months(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    const-string v1, "vehicle_type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    return-object v0
.end method

.method private createIntervalSQL(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 83
    new-instance v0, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;

    invoke-direct {v0, p0}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;-><init>(Lcom/evancharlton/mileage/provider/tables/ContentTable;)V

    .line 84
    .local v0, "builder":Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 85
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;

    .line 86
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->build()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static miles(J)J
    .locals 2
    .param p0, "num"    # J

    .line 102
    const-wide/32 v0, 0x27484

    mul-long v0, v0, p0

    return-wide v0
.end method

.method private static months(J)J
    .locals 2
    .param p0, "num"    # J

    .line 106
    const-wide v0, 0x9a7ec800L

    mul-long v0, v0, p0

    return-wide v0
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

    .line 52
    const-class v0, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .line 158
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "service_interval_templates"

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 62
    packed-switch p1, :pswitch_data_0

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 66
    :pswitch_0
    const-string v0, "vnd.android.cursor.item/vnd.evancharlton.interval_template"

    return-object v0

    .line 64
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/vnd.evancharlton.interval_template"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Z)[Ljava/lang/String;
    .locals 3
    .param p1, "isUpgrade"    # Z

    .line 73
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->TEMPLATES:[Landroid/content/ContentValues;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 75
    .local v0, "sql":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->TEMPLATES:[Landroid/content/ContentValues;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 76
    sget-object v2, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->TEMPLATES:[Landroid/content/ContentValues;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->createIntervalSQL(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public insert(ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .line 111
    const/16 v0, 0x3c

    if-eq p1, v0, :cond_0

    .line 115
    const-wide/16 v0, -0x1

    return-wide v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public query(ILandroid/net/Uri;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "queryBuilder"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "projection"    # [Ljava/lang/String;

    .line 121
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 132
    const/4 v0, 0x0

    return v0

    .line 127
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 128
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->buildProjectionMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 130
    return v0

    .line 123
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 124
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->buildProjectionMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 125
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerUris()V
    .locals 2

    .line 137
    const-string v0, "intervals/templates"

    const/16 v1, 0x3c

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 138
    const-string v0, "intervals/templates/#"

    const/16 v1, 0x3d

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 139
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

    .line 144
    packed-switch p1, :pswitch_data_0

    .line 153
    const/4 v0, -0x1

    return v0

    .line 146
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    .line 148
    invoke-virtual {p4, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 146
    invoke-virtual {p2, v0, p4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 151
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p4, p5, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
