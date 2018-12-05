.class public abstract Lcom/evancharlton/mileage/provider/tables/ContentTable;
.super Ljava/lang/Object;
.source "ContentTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;,
        Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;
    }
.end annotation


# static fields
.field protected static TABLE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-string v0, "content_table"

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/ContentTable;->TABLE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildProjectionMap([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .param p0, "map"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .local v0, "projection":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 30
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .end local v3    # "key":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final create()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;

    invoke-direct {v0, p0}, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;-><init>(Lcom/evancharlton/mileage/provider/tables/ContentTable;)V

    .line 87
    .local v0, "builder":Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->getDaoType()Ljava/lang/Class;

    move-result-object v1

    .line 88
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/evancharlton/mileage/dao/Dao;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 89
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 90
    .local v6, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    .line 91
    .local v7, "annotations":[Ljava/lang/annotation/Annotation;
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 92
    .local v10, "annotation":Ljava/lang/annotation/Annotation;
    instance-of v11, v10, Lcom/evancharlton/mileage/dao/Dao$Column;

    if-eqz v11, :cond_0

    .line 93
    move-object v8, v10

    check-cast v8, Lcom/evancharlton/mileage/dao/Dao$Column;

    .line 94
    .local v8, "columnAnnotation":Lcom/evancharlton/mileage/dao/Dao$Column;
    invoke-interface {v8}, Lcom/evancharlton/mileage/dao/Dao$Column;->name()Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "columnName":Ljava/lang/String;
    invoke-interface {v8}, Lcom/evancharlton/mileage/dao/Dao$Column;->type()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    goto :goto_2

    .line 103
    :pswitch_0
    invoke-virtual {v0, v9}, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->addDouble(Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;

    .line 104
    goto :goto_2

    .line 100
    :pswitch_1
    invoke-virtual {v0, v9}, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->addInteger(Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;

    .line 101
    goto :goto_2

    .line 106
    :pswitch_2
    invoke-virtual {v0, v9}, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->addText(Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;

    .line 109
    :goto_2
    goto :goto_3

    .line 91
    .end local v8    # "columnAnnotation":Lcom/evancharlton/mileage/dao/Dao$Column;
    .end local v9    # "columnName":Ljava/lang/String;
    .end local v10    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 89
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "annotations":[Ljava/lang/annotation/Annotation;
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {v0}, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->build()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 43
    :try_start_0
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 44
    .local v0, "id":J
    if-nez p3, :cond_0

    .line 45
    const-string v2, ""

    move-object p3, v2

    .line 47
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_id = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object p3, v2

    .line 49
    const/4 v2, 0x0

    if-nez p4, :cond_1

    .line 50
    new-array v3, v2, [Ljava/lang/String;

    move-object p4, v3

    .line 52
    :cond_1
    array-length v3, p4

    add-int/lit8 v3, v3, 0x1

    .line 53
    .local v3, "length":I
    new-array v4, v3, [Ljava/lang/String;

    .line 54
    .local v4, "args":[Ljava/lang/String;
    nop

    .local v2, "i":I
    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-ge v2, v5, :cond_2

    .line 55
    aget-object v5, p4, v2

    aput-object v5, v4, v2

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "i":I
    :cond_2
    add-int/lit8 v2, v3, -0x1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    move-object p4, v4

    .end local v0    # "id":J
    .end local v3    # "length":I
    .end local v4    # "args":[Ljava/lang/String;
    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    goto :goto_2

    .line 59
    :catch_1
    move-exception v0

    .line 63
    :goto_1
    nop

    .line 64
    :goto_2
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected abstract getDaoType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/evancharlton/mileage/dao/Dao;",
            ">;"
        }
    .end annotation
.end method

.method public getDefaultSortOrder()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "_id desc"

    return-object v0
.end method

.method public abstract getProjection()[Ljava/lang/String;
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public abstract getType(I)Ljava/lang/String;
.end method

.method public abstract init(Z)[Ljava/lang/String;
.end method

.method public abstract insert(ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
.end method

.method public final isValidType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 68
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->getType(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract query(ILandroid/net/Uri;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/content/Context;[Ljava/lang/String;)Z
.end method

.method public abstract registerUris()V
.end method

.method public abstract update(ILandroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
