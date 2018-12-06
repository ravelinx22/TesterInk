.class public abstract Lcom/evancharlton/mileage/dao/Dao;
.super Ljava/lang/Object;
.source "Dao.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/dao/Dao$Range;,
        Lcom/evancharlton/mileage/dao/Dao$Past;,
        Lcom/evancharlton/mileage/dao/Dao$CanBeEmpty;,
        Lcom/evancharlton/mileage/dao/Dao$Nullable;,
        Lcom/evancharlton/mileage/dao/Dao$Validate;,
        Lcom/evancharlton/mileage/dao/Dao$DataObject;,
        Lcom/evancharlton/mileage/dao/Dao$Column;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Dao"

.field public static final _ID:Ljava/lang/String; = "_id"


# instance fields
.field private mId:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "_id"
        type = 0x5
    .end annotation
.end field

.field private mInMemoryDataChanged:Z

.field private mUriBase:Landroid/net/Uri;


# direct methods
.method protected constructor <init>(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mUriBase:Landroid/net/Uri;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mInMemoryDataChanged:Z

    .line 40
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;->load(Landroid/content/ContentValues;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mUriBase:Landroid/net/Uri;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mInMemoryDataChanged:Z

    .line 44
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;->load(Landroid/database/Cursor;)V

    .line 45
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 50
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 54
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public delete(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 324
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Dao;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getBoolean(Landroid/content/ContentValues;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 388
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 389
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 392
    :cond_0
    return p3
.end method

.method protected getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .line 356
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected getDouble(Landroid/content/ContentValues;Ljava/lang/String;D)D
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # D

    .line 380
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 381
    .local v0, "value":Ljava/lang/Double;
    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 384
    :cond_0
    return-wide p3
.end method

.method protected getDouble(Landroid/database/Cursor;Ljava/lang/String;)D
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .line 348
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getId()J
    .locals 2

    .line 332
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mId:J

    return-wide v0
.end method

.method protected getInt(Landroid/content/ContentValues;Ljava/lang/String;I)I
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 364
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 365
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 368
    :cond_0
    return p3
.end method

.method protected getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .line 360
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method protected getLong(Landroid/content/ContentValues;Ljava/lang/String;J)J
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .line 396
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 397
    .local v0, "value":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 400
    :cond_0
    return-wide p3
.end method

.method protected getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .line 344
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 372
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 374
    return-object v0

    .line 376
    :cond_0
    return-object p3
.end method

.method protected getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .line 352
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mUriBase:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/evancharlton/mileage/dao/Dao$DataObject;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/dao/Dao$DataObject;

    .line 205
    .local v0, "annotation":Lcom/evancharlton/mileage/dao/Dao$DataObject;
    sget-object v1, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    invoke-interface {v0}, Lcom/evancharlton/mileage/dao/Dao$DataObject;->path()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/evancharlton/mileage/dao/Dao;->mUriBase:Landroid/net/Uri;

    .line 207
    .end local v0    # "annotation":Lcom/evancharlton/mileage/dao/Dao$DataObject;
    :cond_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Dao;->isExistingObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mUriBase:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Dao;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mUriBase:Landroid/net/Uri;

    return-object v0
.end method

.method public final isExistingObject()Z
    .locals 5

    .line 328
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public load(Landroid/content/ContentValues;)V
    .locals 12
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 127
    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    .line 128
    iput-wide v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mId:J

    .line 129
    return-void

    .line 131
    :cond_0
    const-string v2, "_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 132
    .local v2, "id":Ljava/lang/Long;
    if-nez v2, :cond_1

    .line 133
    iput-wide v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mId:J

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mId:J

    .line 139
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 140
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_6

    aget-object v5, v0, v4

    .line 141
    .local v5, "field":Ljava/lang/reflect/Field;
    const-class v6, Lcom/evancharlton/mileage/dao/Dao$Column;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/evancharlton/mileage/dao/Dao$Column;

    .line 142
    .local v6, "column":Lcom/evancharlton/mileage/dao/Dao$Column;
    if-eqz v6, :cond_5

    .line 143
    const/4 v7, 0x0

    .line 144
    .local v7, "value":Ljava/lang/Object;
    invoke-interface {v6}, Lcom/evancharlton/mileage/dao/Dao$Column;->type()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    .line 164
    :pswitch_0
    invoke-interface {v6}, Lcom/evancharlton/mileage/dao/Dao$Column;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 165
    if-nez v7, :cond_4

    .line 166
    new-instance v8, Ljava/lang/Long;

    invoke-interface {v6}, Lcom/evancharlton/mileage/dao/Dao$Column;->value()I

    move-result v9

    int-to-long v9, v9

    invoke-direct {v8, v9, v10}, Ljava/lang/Long;-><init>(J)V

    move-object v7, v8

    goto/16 :goto_3

    .line 176
    :pswitch_1
    invoke-interface {v6}, Lcom/evancharlton/mileage/dao/Dao$Column;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 177
    .local v8, "ms":Ljava/lang/Long;
    if-eqz v8, :cond_2

    .line 178
    new-instance v9, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    move-object v7, v9

    goto :goto_3

    .line 180
    :cond_2
    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    move-object v7, v9

    goto :goto_3

    .line 146
    .end local v8    # "ms":Ljava/lang/Long;
    :pswitch_2
    invoke-interface {v6}, Lcom/evancharlton/mileage/dao/Dao$Column;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    .line 147
    if-nez v7, :cond_4

    .line 148
    new-instance v8, Ljava/lang/Boolean;

    invoke-interface {v6}, Lcom/evancharlton/mileage/dao/Dao$Column;->value()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    invoke-direct {v8, v10}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v7, v8

    goto :goto_3

    .line 152
    :pswitch_3
    invoke-interface {v6}, Lcom/evancharlton/mileage/dao/Dao$Column;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    .line 153
    if-nez v7, :cond_4

    .line 154
    new-instance v8, Ljava/lang/Double;

    invoke-interface {v6}, Lcom/evancharlton/mileage/dao/Dao$Column;->value()I

    move-result v9

    int-to-double v9, v9

    invoke-direct {v8, v9, v10}, Ljava/lang/Double;-><init>(D)V

    move-object v7, v8

    goto :goto_3

    .line 158
    :pswitch_4
    invoke-interface {v6}, Lcom/evancharlton/mileage/dao/Dao$Column;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 159
    if-nez v7, :cond_4

    .line 160
    new-instance v8, Ljava/lang/Integer;

    invoke-interface {v6}, Lcom/evancharlton/mileage/dao/Dao$Column;->value()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    move-object v7, v8

    goto :goto_3

    .line 170
    :pswitch_5
    invoke-interface {v6}, Lcom/evancharlton/mileage/dao/Dao$Column;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 171
    if-nez v7, :cond_4

    .line 172
    const-string v7, ""

    .line 184
    :cond_4
    :goto_3
    if-eqz v7, :cond_5

    .line 186
    :try_start_0
    invoke-virtual {v5, p0, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "column":Lcom/evancharlton/mileage/dao/Dao$Column;
    .end local v7    # "value":Ljava/lang/Object;
    :goto_4
    goto :goto_5

    .line 189
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v6    # "column":Lcom/evancharlton/mileage/dao/Dao$Column;
    .restart local v7    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 190
    .local v8, "e":Ljava/lang/IllegalAccessException;
    const-string v9, "Dao"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t access "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 187
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v8

    .line 188
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v9, "Dao"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t set value for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_4

    .line 140
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "column":Lcom/evancharlton/mileage/dao/Dao$Column;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 195
    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public load(Landroid/database/Cursor;)V
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 58
    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 61
    :cond_0
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mId:J

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 65
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, v0, v3

    .line 66
    .local v4, "field":Ljava/lang/reflect/Field;
    const-class v5, Lcom/evancharlton/mileage/dao/Dao$Column;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/evancharlton/mileage/dao/Dao$Column;

    .line 67
    .local v5, "column":Lcom/evancharlton/mileage/dao/Dao$Column;
    if-eqz v5, :cond_6

    .line 68
    invoke-interface {v5}, Lcom/evancharlton/mileage/dao/Dao$Column;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 69
    .local v6, "columnIndex":I
    const/4 v7, 0x0

    .line 70
    .local v7, "value":Ljava/lang/Object;
    invoke-interface {v5}, Lcom/evancharlton/mileage/dao/Dao$Column;->type()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    .line 92
    :pswitch_0
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 93
    if-nez v7, :cond_5

    .line 94
    new-instance v8, Ljava/lang/Long;

    invoke-interface {v5}, Lcom/evancharlton/mileage/dao/Dao$Column;->value()I

    move-result v9

    int-to-long v9, v9

    invoke-direct {v8, v9, v10}, Ljava/lang/Long;-><init>(J)V

    move-object v7, v8

    goto/16 :goto_3

    .line 104
    :pswitch_1
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 105
    .local v8, "ms":Ljava/lang/Long;
    if-eqz v8, :cond_1

    .line 106
    new-instance v9, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    move-object v7, v9

    goto/16 :goto_3

    .line 108
    :cond_1
    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    move-object v7, v9

    goto :goto_3

    .line 72
    .end local v8    # "ms":Ljava/lang/Long;
    :pswitch_2
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 73
    const/4 v8, 0x1

    if-nez v7, :cond_3

    .line 74
    new-instance v9, Ljava/lang/Boolean;

    invoke-interface {v5}, Lcom/evancharlton/mileage/dao/Dao$Column;->value()I

    move-result v10

    if-ne v10, v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-direct {v9, v8}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v7, v9

    goto :goto_3

    .line 76
    :cond_3
    move-object v9, v7

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v8, :cond_4

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 78
    goto :goto_3

    .line 80
    :pswitch_3
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 81
    if-nez v7, :cond_5

    .line 82
    new-instance v8, Ljava/lang/Double;

    invoke-interface {v5}, Lcom/evancharlton/mileage/dao/Dao$Column;->value()I

    move-result v9

    int-to-double v9, v9

    invoke-direct {v8, v9, v10}, Ljava/lang/Double;-><init>(D)V

    move-object v7, v8

    goto :goto_3

    .line 86
    :pswitch_4
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 87
    if-nez v7, :cond_5

    .line 88
    new-instance v8, Ljava/lang/Integer;

    invoke-interface {v5}, Lcom/evancharlton/mileage/dao/Dao$Column;->value()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    move-object v7, v8

    goto :goto_3

    .line 98
    :pswitch_5
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 99
    if-nez v7, :cond_5

    .line 100
    const-string v7, ""

    .line 112
    :cond_5
    :goto_3
    if-eqz v7, :cond_6

    .line 114
    :try_start_0
    invoke-virtual {v4, p0, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "column":Lcom/evancharlton/mileage/dao/Dao$Column;
    .end local v6    # "columnIndex":I
    .end local v7    # "value":Ljava/lang/Object;
    :goto_4
    goto :goto_5

    .line 117
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "column":Lcom/evancharlton/mileage/dao/Dao$Column;
    .restart local v6    # "columnIndex":I
    .restart local v7    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 118
    .local v8, "e":Ljava/lang/IllegalAccessException;
    const-string v9, "Dao"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t access "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 115
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v8

    .line 116
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v9, "Dao"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t set value for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_4

    .line 65
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "column":Lcom/evancharlton/mileage/dao/Dao$Column;
    .end local v6    # "columnIndex":I
    .end local v7    # "value":Ljava/lang/Object;
    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 123
    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected preValidate()V
    .locals 0

    .line 297
    return-void
.end method

.method public save(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .line 300
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 301
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/dao/Dao;->validate(Landroid/content/ContentValues;)V

    .line 302
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Dao;->isExistingObject()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 304
    const-string v1, "_id"

    iget-wide v3, p0, Lcom/evancharlton/mileage/dao/Dao;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Dao;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Dao;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 309
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 310
    .local v3, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 311
    .local v4, "id":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/evancharlton/mileage/dao/Dao;->mId:J

    .line 313
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "id":Ljava/lang/String;
    :goto_0
    return v2
.end method

.method public saveIfChanged(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .line 317
    iget-boolean v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mInMemoryDataChanged:Z

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;->save(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 320
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setId(J)V
    .locals 0
    .param p1, "id"    # J

    .line 336
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/Dao;->mId:J

    .line 337
    return-void
.end method

.method protected setInMemoryDataChanged()V
    .locals 1

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mInMemoryDataChanged:Z

    .line 341
    return-void
.end method

.method protected final validate(Landroid/content/ContentValues;)V
    .locals 16
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/dao/Dao;->preValidate()V

    .line 222
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 223
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_13

    aget-object v5, v1, v4

    .line 224
    .local v5, "field":Ljava/lang/reflect/Field;
    const-class v0, Lcom/evancharlton/mileage/dao/Dao$Validate;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/evancharlton/mileage/dao/Dao$Validate;

    .line 225
    .local v6, "validate":Lcom/evancharlton/mileage/dao/Dao$Validate;
    if-nez v6, :cond_0

    .line 226
    nop

    .line 223
    move-object/from16 v8, p0

    move-object/from16 v12, p1

    goto/16 :goto_e

    .line 228
    :cond_0
    invoke-interface {v6}, Lcom/evancharlton/mileage/dao/Dao$Validate;->value()I

    move-result v0

    move v7, v0

    .line 230
    .local v7, "errorMessage":I
    move-object/from16 v8, p0

    :try_start_0
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    .local v0, "value":Ljava/lang/Object;
    if-eqz v6, :cond_12

    .line 232
    if-lez v7, :cond_e

    .line 234
    if-nez v0, :cond_2

    const-class v9, Lcom/evancharlton/mileage/dao/Dao$Nullable;

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_1

    .line 235
    :cond_1
    new-instance v9, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    invoke-direct {v9, v7}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(I)V

    throw v9

    .line 239
    :cond_2
    :goto_1
    instance-of v9, v0, Ljava/lang/String;

    if-eqz v9, :cond_4

    const-class v9, Lcom/evancharlton/mileage/dao/Dao$CanBeEmpty;

    .line 240
    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    if-nez v9, :cond_4

    .line 241
    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    .line 242
    :cond_3
    new-instance v9, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    invoke-direct {v9, v7}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(I)V

    throw v9

    .line 247
    :cond_4
    :goto_2
    instance-of v9, v0, Ljava/lang/Number;

    if-eqz v9, :cond_e

    .line 248
    const-class v9, Lcom/evancharlton/mileage/dao/Dao$Past;

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    const/4 v10, 0x1

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    .line 249
    .local v9, "checkPast":Z
    :goto_3
    const-class v11, Lcom/evancharlton/mileage/dao/Dao$Range$Positive;

    .line 250
    invoke-virtual {v5, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    if-eqz v11, :cond_6

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    .line 251
    .local v10, "checkPositive":Z
    :goto_4
    instance-of v11, v0, Ljava/lang/Double;

    if-eqz v11, :cond_8

    .line 252
    if-eqz v10, :cond_8

    move-object v11, v0

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpg-double v15, v11, v13

    if-lez v15, :cond_7

    goto :goto_5

    .line 253
    :cond_7
    new-instance v11, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    invoke-direct {v11, v7}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(I)V

    throw v11

    .line 257
    :cond_8
    :goto_5
    instance-of v11, v0, Ljava/lang/Long;

    if-eqz v11, :cond_c

    .line 258
    if-eqz v10, :cond_a

    move-object v11, v0

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_9

    goto :goto_6

    .line 259
    :cond_9
    new-instance v11, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    invoke-direct {v11, v7}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(I)V

    throw v11

    .line 261
    :cond_a
    :goto_6
    if-eqz v9, :cond_c

    move-object v11, v0

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    cmp-long v15, v11, v13

    if-gez v15, :cond_b

    goto :goto_7

    .line 262
    :cond_b
    new-instance v11, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    invoke-direct {v11, v7}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(I)V

    throw v11

    .line 266
    :cond_c
    :goto_7
    instance-of v11, v0, Ljava/lang/Integer;

    if-eqz v11, :cond_e

    .line 267
    if-eqz v10, :cond_e

    move-object v11, v0

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_d

    .end local v9    # "checkPast":Z
    .end local v10    # "checkPositive":Z
    goto :goto_8

    .line 268
    .restart local v9    # "checkPast":Z
    .restart local v10    # "checkPositive":Z
    :cond_d
    new-instance v11, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    invoke-direct {v11, v7}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(I)V

    throw v11

    .line 275
    .end local v9    # "checkPast":Z
    .end local v10    # "checkPositive":Z
    :cond_e
    :goto_8
    const-class v9, Lcom/evancharlton/mileage/dao/Dao$Column;

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/evancharlton/mileage/dao/Dao$Column;

    .line 276
    .local v9, "column":Lcom/evancharlton/mileage/dao/Dao$Column;
    if-eqz v9, :cond_12

    .line 277
    const/4 v10, 0x0

    .line 278
    .local v10, "data":Ljava/lang/String;
    instance-of v11, v0, Ljava/util/Date;

    if-eqz v11, :cond_f

    .line 279
    move-object v11, v0

    check-cast v11, Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    goto :goto_a

    .line 280
    :cond_f
    instance-of v11, v0, Ljava/lang/Boolean;

    if-eqz v11, :cond_11

    .line 281
    move-object v11, v0

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_10

    const-string v11, "1"

    goto :goto_9

    :cond_10
    const-string v11, "0"

    :goto_9
    move-object v10, v11

    goto :goto_a

    .line 283
    :cond_11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 285
    :goto_a
    invoke-interface {v9}, Lcom/evancharlton/mileage/dao/Dao$Column;->name()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v12, p1

    :try_start_1
    invoke-virtual {v12, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    .line 290
    .end local v0    # "value":Ljava/lang/Object;
    .end local v9    # "column":Lcom/evancharlton/mileage/dao/Dao$Column;
    .end local v10    # "data":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_b

    .line 288
    :catch_1
    move-exception v0

    goto :goto_c

    .line 292
    :cond_12
    move-object/from16 v12, p1

    goto :goto_d

    .line 290
    :catch_2
    move-exception v0

    move-object/from16 v12, p1

    .line 291
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :goto_b
    const-string v9, "Dao"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 288
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    move-object/from16 v12, p1

    .line 289
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_c
    const-string v9, "Dao"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "validate":Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end local v7    # "errorMessage":I
    :goto_d
    nop

    .line 223
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 294
    :cond_13
    move-object/from16 v8, p0

    move-object/from16 v12, p1

    return-void
.end method
