.class public Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;
.super Lcom/evancharlton/mileage/BaseFormActivity;
.source "ServiceIntervalTemplateActivity.java"


# instance fields
.field protected mDescription:Landroid/widget/EditText;

.field protected mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

.field protected mDuration:Lcom/evancharlton/mileage/views/DateDelta;

.field protected final mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

.field protected mTitle:Landroid/widget/EditText;

.field protected mVehicleTypes:Lcom/evancharlton/mileage/views/CursorSpinner;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/evancharlton/mileage/BaseFormActivity;-><init>()V

    .line 21
    new-instance v0, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    return-void
.end method


# virtual methods
.method protected getCreateString()I
    .locals 1

    .line 102
    const v0, 0x7f080010

    return v0
.end method

.method protected getDao()Lcom/evancharlton/mileage/dao/Dao;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    return-object v0
.end method

.method protected getProjectionArray()[Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected getUri(J)Landroid/net/Uri;
    .locals 2
    .param p1, "id"    # J

    .line 51
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "intervals/templates"

    .line 52
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 51
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected initUI()V
    .locals 1

    .line 58
    const v0, 0x7f050030

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTitle:Landroid/widget/EditText;

    .line 59
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDescription:Landroid/widget/EditText;

    .line 60
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/DistanceDelta;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    .line 61
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/DateDelta;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDuration:Lcom/evancharlton/mileage/views/DateDelta;

    .line 62
    const v0, 0x7f050032

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/CursorSpinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mVehicleTypes:Lcom/evancharlton/mileage/views/CursorSpinner;

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    const v0, 0x7f07001b

    invoke-super {p0, p1, v0}, Lcom/evancharlton/mileage/BaseFormActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 37
    return-void
.end method

.method protected populateUI()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTitle:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDescription:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->getDistance()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/views/DistanceDelta;->setDelta(J)V

    .line 70
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDuration:Lcom/evancharlton/mileage/views/DateDelta;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/views/DateDelta;->setDelta(J)V

    .line 71
    return-void
.end method

.method protected setFields()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->setTitle(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    iget-object v2, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->setDescription(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/views/DistanceDelta;->getDelta()J

    move-result-wide v1

    .line 84
    .local v1, "distance":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 88
    iget-object v5, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    invoke-virtual {v5, v1, v2}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->setDistance(J)V

    .line 90
    iget-object v5, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDuration:Lcom/evancharlton/mileage/views/DateDelta;

    invoke-virtual {v5}, Lcom/evancharlton/mileage/views/DateDelta;->getDelta()J

    move-result-wide v5

    .line 91
    .local v5, "duration":J
    cmp-long v7, v5, v3

    if-lez v7, :cond_0

    .line 95
    iget-object v3, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    iget-object v4, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDuration:Lcom/evancharlton/mileage/views/DateDelta;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/views/DateDelta;->getDelta()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->setDuration(J)V

    .line 97
    iget-object v3, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTemplate:Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    iget-object v4, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mVehicleTypes:Lcom/evancharlton/mileage/views/CursorSpinner;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->setVehicleTypeId(J)V

    .line 98
    return-void

    .line 92
    :cond_0
    new-instance v3, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v4, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDuration:Lcom/evancharlton/mileage/views/DateDelta;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/views/DateDelta;->getEditField()Landroid/widget/TextView;

    move-result-object v4

    const v7, 0x7f080058

    invoke-direct {v3, v4, v7}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v3

    .line 85
    .end local v5    # "duration":J
    :cond_1
    new-instance v3, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v4, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/views/DistanceDelta;->getEditField()Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f080057

    invoke-direct {v3, v4, v5}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v3

    .line 77
    .end local v1    # "distance":J
    :cond_2
    new-instance v1, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v2, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;->mTitle:Landroid/widget/EditText;

    const v3, 0x7f08005b

    invoke-direct {v1, v2, v3}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v1
.end method
