.class public Lcom/evancharlton/mileage/VehicleTypeActivity;
.super Lcom/evancharlton/mileage/BaseFormActivity;
.source "VehicleTypeActivity.java"


# instance fields
.field private mDescription:Landroid/widget/EditText;

.field private mTitle:Landroid/widget/EditText;

.field private mVehicleType:Lcom/evancharlton/mileage/dao/VehicleType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/evancharlton/mileage/BaseFormActivity;-><init>()V

    .line 19
    new-instance v0, Lcom/evancharlton/mileage/dao/VehicleType;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/dao/VehicleType;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleTypeActivity;->mVehicleType:Lcom/evancharlton/mileage/dao/VehicleType;

    return-void
.end method


# virtual methods
.method public canDelete()Z
    .locals 6

    .line 67
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/VehicleTypesTable;->BASE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/evancharlton/mileage/VehicleTypeActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 68
    .local v0, "count":Landroid/database/Cursor;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected getCreateString()I
    .locals 1

    .line 62
    const v0, 0x7f080012

    return v0
.end method

.method protected getDao()Lcom/evancharlton/mileage/dao/Dao;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleTypeActivity;->mVehicleType:Lcom/evancharlton/mileage/dao/VehicleType;

    return-object v0
.end method

.method protected getProjectionArray()[Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/VehicleTypesTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected getUri(J)Landroid/net/Uri;
    .locals 2
    .param p1, "id"    # J

    .line 56
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "vehicles/types/"

    .line 57
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 56
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected initUI()V
    .locals 1

    .line 33
    const v0, 0x7f050030

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleTypeActivity;->mTitle:Landroid/widget/EditText;

    .line 34
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleTypeActivity;->mDescription:Landroid/widget/EditText;

    .line 35
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 23
    const v0, 0x7f070021

    invoke-super {p0, p1, v0}, Lcom/evancharlton/mileage/BaseFormActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 24
    return-void
.end method

.method protected populateUI()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleTypeActivity;->mTitle:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleTypeActivity;->mVehicleType:Lcom/evancharlton/mileage/dao/VehicleType;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/VehicleType;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleTypeActivity;->mDescription:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleTypeActivity;->mVehicleType:Lcom/evancharlton/mileage/dao/VehicleType;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/VehicleType;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method

.method protected setFields()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleTypeActivity;->mVehicleType:Lcom/evancharlton/mileage/dao/VehicleType;

    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleTypeActivity;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/dao/VehicleType;->setTitle(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleTypeActivity;->mVehicleType:Lcom/evancharlton/mileage/dao/VehicleType;

    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleTypeActivity;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/dao/VehicleType;->setDescription(Ljava/lang/String;)V

    .line 47
    return-void
.end method
