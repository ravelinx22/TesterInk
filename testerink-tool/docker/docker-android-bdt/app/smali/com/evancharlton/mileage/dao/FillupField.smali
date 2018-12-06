.class public Lcom/evancharlton/mileage/dao/FillupField;
.super Lcom/evancharlton/mileage/dao/Dao;
.source "FillupField.java"


# static fields
.field public static final FILLUP_ID:Ljava/lang/String; = "fillup_id"

.field public static final TEMPLATE_ID:Ljava/lang/String; = "template_id"

.field public static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field protected mFillupId:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "fillup_id"
        type = 0x5
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Range$Positive;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f080055
    .end annotation
.end field

.field protected mTemplateId:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "template_id"
        type = 0x5
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Range$Positive;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f080062
    .end annotation
.end field

.field protected mValue:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "value"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 36
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/content/ContentValues;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 40
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/database/Cursor;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getFieldTemplate(Landroid/content/Context;)Lcom/evancharlton/mileage/dao/Field;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupField;->getTemplateId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 94
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->PROJECTION:[Ljava/lang/String;

    .line 95
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 96
    .local v1, "c":Landroid/database/Cursor;
    new-instance v2, Lcom/evancharlton/mileage/dao/Field;

    invoke-direct {v2, v1}, Lcom/evancharlton/mileage/dao/Field;-><init>(Landroid/database/Cursor;)V

    .line 97
    .local v2, "f":Lcom/evancharlton/mileage/dao/Field;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 98
    return-object v2
.end method

.method public getFillup(Landroid/content/Context;)Lcom/evancharlton/mileage/dao/Fillup;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTemplateId()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/FillupField;->mTemplateId:J

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3

    .line 45
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    .line 46
    .local v0, "base":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupField;->isExistingObject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string v1, "fillups/field"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupField;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_0
    const-string v1, "fillups/fields"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/FillupField;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public save(Landroid/content/Context;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .line 57
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/dao/FillupField;->validate(Landroid/content/ContentValues;)V

    .line 59
    const-string v7, "fillup_id = ? AND template_id = ?"

    .line 60
    .local v7, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    iget-wide v1, p0, Lcom/evancharlton/mileage/dao/FillupField;->mFillupId:J

    .line 61
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v5, v8

    iget-wide v1, p0, Lcom/evancharlton/mileage/dao/FillupField;->mTemplateId:J

    .line 62
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x1

    aput-object v1, v5, v9

    .line 64
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->FILLUPS_FIELDS_URI:Landroid/net/Uri;

    sget-object v3, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 67
    .local v1, "c":Landroid/database/Cursor;
    const-wide/16 v2, 0x0

    .line 68
    .local v2, "id":J
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 69
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 70
    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 72
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 73
    const-wide/16 v10, 0x0

    cmp-long v4, v2, v10

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupField;->isExistingObject()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;->save(Landroid/content/Context;)Z

    move-result v4

    return v4

    .line 75
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupField;->getUri()Landroid/net/Uri;

    move-result-object v6

    const-string v10, "_id = ?"

    new-array v11, v9, [Ljava/lang/String;

    .line 76
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    .line 75
    invoke-virtual {v4, v6, v0, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 78
    return v9
.end method

.method public setFillupId(J)V
    .locals 0
    .param p1, "id"    # J

    .line 106
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/FillupField;->mFillupId:J

    .line 107
    return-void
.end method

.method public setTemplateId(J)V
    .locals 0
    .param p1, "id"    # J

    .line 110
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/FillupField;->mTemplateId:J

    .line 111
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/FillupField;->mValue:Ljava/lang/String;

    .line 115
    return-void
.end method
