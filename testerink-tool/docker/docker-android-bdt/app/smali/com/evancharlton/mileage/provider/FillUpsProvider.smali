.class public Lcom/evancharlton/mileage/provider/FillUpsProvider;
.super Landroid/content/ContentProvider;
.source "FillUpsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.evancharlton.mileage"

.field public static final BASE_URI:Landroid/net/Uri;

.field public static final DATABASE_NAME:Ljava/lang/String; = "mileage.db"

.field public static final DATABASE_VERSION:I = 0x6

.field private static final LOOKUP:Landroid/util/SparseIntArray;

.field public static final TABLES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/evancharlton/mileage/provider/tables/ContentTable;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FillupsProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mDatabaseHelper:Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    const-string v0, "content://com.evancharlton.mileage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->LOOKUP:Landroid/util/SparseIntArray;

    .line 69
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 76
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    new-instance v1, Lcom/evancharlton/mileage/provider/tables/FillupsTable;

    invoke-direct {v1}, Lcom/evancharlton/mileage/provider/tables/FillupsTable;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    new-instance v1, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;

    invoke-direct {v1}, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    new-instance v1, Lcom/evancharlton/mileage/provider/tables/FieldsTable;

    invoke-direct {v1}, Lcom/evancharlton/mileage/provider/tables/FieldsTable;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    new-instance v1, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;

    invoke-direct {v1}, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    new-instance v1, Lcom/evancharlton/mileage/provider/tables/VehicleTypesTable;

    invoke-direct {v1}, Lcom/evancharlton/mileage/provider/tables/VehicleTypesTable;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    new-instance v1, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;

    invoke-direct {v1}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    new-instance v1, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;

    invoke-direct {v1}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    new-instance v1, Lcom/evancharlton/mileage/provider/tables/CacheTable;

    invoke-direct {v1}, Lcom/evancharlton/mileage/provider/tables/CacheTable;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/provider/tables/ContentTable;

    .line 86
    .local v1, "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    invoke-virtual {v1}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->registerUris()V

    .line 87
    .end local v1    # "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static initTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 132
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

    .line 133
    .local v1, "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->init(Z)[Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "init":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 135
    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 136
    .local v5, "sql":Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    .end local v5    # "sql":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 139
    .end local v1    # "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    .end local v3    # "init":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 140
    :cond_1
    return-void
.end method

.method private notifyListeners(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 267
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 268
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 270
    invoke-static {v0}, Lcom/evancharlton/mileage/services/AutomaticBackupService;->run(Landroid/content/Context;)V

    .line 271
    return-void
.end method

.method public static registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V
    .locals 2
    .param p0, "table"    # Lcom/evancharlton/mileage/provider/tables/ContentTable;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "code"    # I

    .line 92
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.evancharlton.mileage"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 94
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 95
    sget-object v1, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v1, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 98
    :cond_0
    sget-object v1, Lcom/evancharlton/mileage/provider/FillUpsProvider;->LOOKUP:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evancharlton/mileage/util/Debugger;->checkQueryOnUiThread(Landroid/content/Context;)V

    .line 152
    iget-object v0, p0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->mDatabaseHelper:Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 154
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, -0x1

    .line 155
    .local v1, "count":I
    sget-object v2, Lcom/evancharlton/mileage/provider/FillUpsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 156
    .local v2, "type":I
    sget-object v3, Lcom/evancharlton/mileage/provider/FillUpsProvider;->LOOKUP:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 157
    .local v3, "position":I
    if-ltz v3, :cond_0

    .line 158
    sget-object v4, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evancharlton/mileage/provider/tables/ContentTable;

    invoke-virtual {v4, v0, p1, p2, p3}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 161
    :cond_0
    if-ltz v1, :cond_1

    .line 165
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->notifyListeners(Landroid/net/Uri;)V

    .line 166
    return v1

    .line 162
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 171
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 172
    .local v0, "type":I
    if-nez v0, :cond_0

    .line 177
    const/4 v1, 0x0

    return-object v1

    .line 179
    :cond_0
    const/4 v1, 0x0

    .line 180
    .local v1, "result":Ljava/lang/String;
    sget-object v2, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evancharlton/mileage/provider/tables/ContentTable;

    .line 181
    .local v3, "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    invoke-virtual {v3, v0}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->getType(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_1

    .line 183
    return-object v1

    .line 185
    .end local v3    # "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    :cond_1
    goto :goto_0

    .line 186
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .line 191
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evancharlton/mileage/util/Debugger;->checkQueryOnUiThread(Landroid/content/Context;)V

    .line 192
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 193
    .local v0, "match":I
    const-wide/16 v1, -0x1

    .line 194
    .local v1, "newId":J
    iget-object v3, p0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->mDatabaseHelper:Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 195
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/evancharlton/mileage/provider/FillUpsProvider;->LOOKUP:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 196
    .local v4, "position":I
    if-ltz v4, :cond_1

    .line 197
    sget-object v5, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/evancharlton/mileage/provider/tables/ContentTable;

    invoke-virtual {v5, v0, v3, p2}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->insert(ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 198
    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-ltz v7, :cond_0

    .line 199
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 200
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->notifyListeners(Landroid/net/Uri;)V

    .line 202
    :cond_0
    return-object p1

    .line 204
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public onCreate()Z
    .locals 4

    .line 144
    new-instance v0, Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->mDatabaseHelper:Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;

    .line 145
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.evancharlton.mileage"

    const-string v2, "reset/"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 210
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evancharlton/mileage/util/Debugger;->checkQueryOnUiThread(Landroid/content/Context;)V

    .line 211
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 212
    .local v5, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, v8}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 213
    .local v9, "match":I
    const/4 v0, 0x0

    .line 214
    .local v0, "changed":Z
    const/4 v10, 0x0

    .line 215
    .local v10, "queryTable":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    sget-object v2, Lcom/evancharlton/mileage/provider/FillUpsProvider;->LOOKUP:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v9, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .line 216
    .local v11, "position":I
    if-ltz v11, :cond_0

    .line 217
    sget-object v2, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/evancharlton/mileage/provider/tables/ContentTable;

    .line 218
    .local v12, "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v2, v12

    move v3, v9

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->query(ILandroid/net/Uri;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    .line 219
    if-eqz v0, :cond_0

    .line 220
    move-object v10, v12

    .line 225
    .end local v0    # "changed":Z
    .end local v12    # "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    .local v2, "changed":Z
    :cond_0
    move v2, v0

    if-eqz v2, :cond_3

    .line 229
    if-nez p2, :cond_1

    .line 230
    invoke-virtual {v10}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->getProjection()[Ljava/lang/String;

    move-result-object v0

    .line 233
    move-object v3, v0

    goto :goto_0

    :cond_1
    move-object/from16 v3, p2

    .line 234
    .end local p2    # "projection":[Ljava/lang/String;
    .local v3, "projection":[Ljava/lang/String;
    :goto_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v10}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->getDefaultSortOrder()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_1

    :cond_2
    move-object/from16 v19, p5

    .line 238
    .local v19, "orderBy":Ljava/lang/String;
    :goto_1
    :try_start_0
    iget-object v0, v1, Lcom/evancharlton/mileage/provider/FillUpsProvider;->mDatabaseHelper:Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_2

    .line 239
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v4, v1, Lcom/evancharlton/mileage/provider/FillUpsProvider;->mDatabaseHelper:Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    .local v13, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_2
    move-object v13, v0

    .line 243
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v5

    move-object v14, v3

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 244
    .local v0, "c":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-interface {v0, v4, v8}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 246
    return-object v0

    .line 226
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v13    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v19    # "orderBy":Ljava/lang/String;
    .restart local p2    # "projection":[Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 251
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evancharlton/mileage/util/Debugger;->checkQueryOnUiThread(Landroid/content/Context;)V

    .line 252
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 253
    .local v0, "match":I
    sget-object v1, Lcom/evancharlton/mileage/provider/FillUpsProvider;->LOOKUP:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 254
    .local v8, "position":I
    if-ltz v8, :cond_1

    .line 255
    iget-object v1, p0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->mDatabaseHelper:Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 256
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    .line 257
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/provider/tables/ContentTable;

    move v2, v0

    move-object v3, v9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->update(ILandroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 258
    .local v1, "count":I
    if-ltz v1, :cond_0

    .line 259
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->notifyListeners(Landroid/net/Uri;)V

    .line 261
    :cond_0
    return v1

    .line 263
    .end local v1    # "count":I
    .end local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
