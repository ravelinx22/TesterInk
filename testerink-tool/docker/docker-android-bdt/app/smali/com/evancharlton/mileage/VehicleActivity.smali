.class public Lcom/evancharlton/mileage/VehicleActivity;
.super Lcom/evancharlton/mileage/BaseFormActivity;
.source "VehicleActivity.java"


# instance fields
.field private mCurrency:Landroid/widget/EditText;

.field private mDescription:Landroid/widget/EditText;

.field private mDistanceUnits:I

.field private mDistances:Landroid/widget/Spinner;

.field private mEconomies:Landroid/widget/Spinner;

.field private mEconomyUnits:I

.field private mMake:Landroid/widget/EditText;

.field private mModel:Landroid/widget/EditText;

.field private mSetDefault:Landroid/widget/CheckBox;

.field private mTitle:Landroid/widget/EditText;

.field private mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

.field private mVehicleTypes:Lcom/evancharlton/mileage/views/CursorSpinner;

.field private mVolumeUnits:I

.field private mVolumes:Landroid/widget/Spinner;

.field private mYear:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/evancharlton/mileage/BaseFormActivity;-><init>()V

    .line 48
    new-instance v0, Lcom/evancharlton/mileage/dao/Vehicle;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/dao/Vehicle;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mDistanceUnits:I

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVolumeUnits:I

    .line 54
    const/4 v0, 0x6

    iput v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mEconomyUnits:I

    return-void
.end method

.method private getDistance()I
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mDistances:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    .line 219
    return v1

    .line 217
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 215
    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDistanceUnits()I
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Vehicle;->getDistanceUnits()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 229
    return v1

    .line 225
    :pswitch_0
    return v1

    .line 227
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEconomy()I
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mEconomies:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x6

    packed-switch v0, :pswitch_data_0

    .line 253
    return v1

    .line 251
    :pswitch_0
    const/16 v0, 0xe

    return v0

    .line 249
    :pswitch_1
    const/16 v0, 0xd

    return v0

    .line 247
    :pswitch_2
    const/16 v0, 0xc

    return v0

    .line 245
    :pswitch_3
    const/16 v0, 0xb

    return v0

    .line 243
    :pswitch_4
    const/16 v0, 0xa

    return v0

    .line 241
    :pswitch_5
    const/16 v0, 0x9

    return v0

    .line 239
    :pswitch_6
    const/16 v0, 0x8

    return v0

    .line 237
    :pswitch_7
    const/4 v0, 0x7

    return v0

    .line 235
    :pswitch_8
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEconomyUnits()I
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Vehicle;->getEconomyUnits()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 277
    return v1

    .line 275
    :pswitch_0
    const/16 v0, 0x8

    return v0

    .line 273
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 271
    :pswitch_2
    const/4 v0, 0x6

    return v0

    .line 269
    :pswitch_3
    const/4 v0, 0x5

    return v0

    .line 267
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 265
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 263
    :pswitch_6
    const/4 v0, 0x2

    return v0

    .line 261
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 259
    :pswitch_8
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVolume()I
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVolumes:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 197
    return v1

    .line 195
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 193
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 191
    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVolumeUnits()I
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Vehicle;->getVolumeUnits()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 209
    return v1

    .line 207
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 205
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 203
    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public canDelete()Z
    .locals 6

    .line 287
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->BASE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/evancharlton/mileage/VehicleActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 288
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

    .line 282
    const v0, 0x7f080011

    return v0
.end method

.method protected getDao()Lcom/evancharlton/mileage/dao/Dao;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    return-object v0
.end method

.method protected getProjectionArray()[Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected getUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "id"    # J

    .line 73
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->BASE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected initUI()V
    .locals 2

    .line 78
    const v0, 0x7f050030

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mTitle:Landroid/widget/EditText;

    .line 79
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mDescription:Landroid/widget/EditText;

    .line 80
    const v0, 0x7f05001e

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mMake:Landroid/widget/EditText;

    .line 81
    const v0, 0x7f050022

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mModel:Landroid/widget/EditText;

    .line 82
    const v0, 0x7f050038

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mYear:Landroid/widget/EditText;

    .line 83
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mCurrency:Landroid/widget/EditText;

    .line 84
    const v0, 0x7f050031

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/CursorSpinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicleTypes:Lcom/evancharlton/mileage/views/CursorSpinner;

    .line 85
    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mSetDefault:Landroid/widget/CheckBox;

    .line 86
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mDistances:Landroid/widget/Spinner;

    .line 87
    const v0, 0x7f050037

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVolumes:Landroid/widget/Spinner;

    .line 88
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mEconomies:Landroid/widget/Spinner;

    .line 90
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mCurrency:Landroid/widget/EditText;

    invoke-static {}, Lcom/evancharlton/mileage/math/Calculator;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 58
    const v0, 0x7f07001f

    invoke-super {p0, p1, v0}, Lcom/evancharlton/mileage/BaseFormActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 59
    return-void
.end method

.method protected populateUI()V
    .locals 11

    .line 95
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mTitle:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Vehicle;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mDescription:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Vehicle;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mMake:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Vehicle;->getMake()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mModel:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Vehicle;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mYear:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Vehicle;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->BASE_URI:Landroid/net/Uri;

    .line 102
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v8, 0x0

    aput-object v2, v4, v8

    .line 105
    .local v4, "projection":[Ljava/lang/String;
    const-string v7, "default_time desc"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/evancharlton/mileage/VehicleActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 106
    .local v2, "c":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 107
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 108
    iget-object v3, p0, Lcom/evancharlton/mileage/VehicleActivity;->mSetDefault:Landroid/widget/CheckBox;

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iget-object v7, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v7}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v9

    cmp-long v7, v5, v9

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mDistances:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleActivity;->getDistanceUnits()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 112
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVolumes:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleActivity;->getVolumeUnits()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 113
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mEconomies:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleActivity;->getEconomyUnits()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 115
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Vehicle;->isExistingObject()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Vehicle;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/VehicleActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mCurrency:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-static {v3}, Lcom/evancharlton/mileage/math/Calculator;->getCurrencySymbol(Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method protected saved()V
    .locals 7

    .line 169
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Vehicle;->getVolumeUnits()I

    move-result v0

    iget v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVolumeUnits:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    .line 170
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Vehicle;->getDistanceUnits()I

    move-result v0

    iget v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mDistanceUnits:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    .line 171
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Vehicle;->getEconomyUnits()I

    move-result v0

    iget v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mEconomyUnits:I

    if-eq v0, v1, :cond_1

    .line 172
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "economy"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 174
    const-string v1, "vehicle_id = ?"

    .line 175
    .local v1, "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    .line 176
    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 178
    .local v2, "selectionArgs":[Ljava/lang/String;
    sget-object v3, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    .line 179
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/evancharlton/mileage/VehicleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/evancharlton/mileage/VehicleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/evancharlton/mileage/provider/tables/CacheTable;->BASE_URI:Landroid/net/Uri;

    const-string v6, "item = ?"

    invoke-virtual {v4, v5, v6, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 185
    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v1    # "where":Ljava/lang/String;
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-super {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->saved()V

    .line 186
    return-void
.end method

.method protected setFields()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleActivity;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 128
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/dao/Vehicle;->setTitle(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/evancharlton/mileage/VehicleActivity;->mYear:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "year":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 134
    iget-object v2, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v2, v1}, Lcom/evancharlton/mileage/dao/Vehicle;->setYear(Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/evancharlton/mileage/VehicleActivity;->mMake:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "make":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 140
    iget-object v3, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v3, v2}, Lcom/evancharlton/mileage/dao/Vehicle;->setMake(Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcom/evancharlton/mileage/VehicleActivity;->mModel:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "model":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 146
    iget-object v4, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v4, v3}, Lcom/evancharlton/mileage/dao/Vehicle;->setModel(Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/evancharlton/mileage/VehicleActivity;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "description":Ljava/lang/String;
    iget-object v5, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v5, v4}, Lcom/evancharlton/mileage/dao/Vehicle;->setDescription(Ljava/lang/String;)V

    .line 151
    iget-object v5, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicleTypes:Lcom/evancharlton/mileage/views/CursorSpinner;

    invoke-virtual {v6}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/evancharlton/mileage/dao/Vehicle;->setVehicleType(J)V

    .line 152
    iget-object v5, p0, Lcom/evancharlton/mileage/VehicleActivity;->mSetDefault:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    iget-object v5, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/evancharlton/mileage/dao/Vehicle;->setDefaultTime(J)V

    .line 155
    :cond_0
    iget-object v5, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleActivity;->getVolume()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/evancharlton/mileage/dao/Vehicle;->setVolumeUnits(I)V

    .line 156
    iget-object v5, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleActivity;->getDistance()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/evancharlton/mileage/dao/Vehicle;->setDistanceUnits(I)V

    .line 157
    iget-object v5, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-direct {p0}, Lcom/evancharlton/mileage/VehicleActivity;->getEconomy()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/evancharlton/mileage/dao/Vehicle;->setEconomyUnits(I)V

    .line 159
    iget-object v5, p0, Lcom/evancharlton/mileage/VehicleActivity;->mCurrency:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "currency":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 161
    invoke-static {}, Lcom/evancharlton/mileage/math/Calculator;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v5

    .line 163
    :cond_1
    iget-object v6, p0, Lcom/evancharlton/mileage/VehicleActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    iget-object v7, p0, Lcom/evancharlton/mileage/VehicleActivity;->mCurrency:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/evancharlton/mileage/dao/Vehicle;->setCurrency(Ljava/lang/String;)V

    .line 164
    return-void

    .line 144
    .end local v4    # "description":Ljava/lang/String;
    .end local v5    # "currency":Ljava/lang/String;
    :cond_2
    new-instance v4, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v5, p0, Lcom/evancharlton/mileage/VehicleActivity;->mModel:Landroid/widget/EditText;

    const v6, 0x7f080066

    invoke-direct {v4, v5, v6}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v4

    .line 138
    .end local v3    # "model":Ljava/lang/String;
    :cond_3
    new-instance v3, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v4, p0, Lcom/evancharlton/mileage/VehicleActivity;->mMake:Landroid/widget/EditText;

    const v5, 0x7f080065

    invoke-direct {v3, v4, v5}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v3

    .line 132
    .end local v2    # "make":Ljava/lang/String;
    :cond_4
    new-instance v2, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v3, p0, Lcom/evancharlton/mileage/VehicleActivity;->mYear:Landroid/widget/EditText;

    const v4, 0x7f08006b

    invoke-direct {v2, v3, v4}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v2

    .line 126
    .end local v1    # "year":Ljava/lang/String;
    :cond_5
    new-instance v1, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v2, p0, Lcom/evancharlton/mileage/VehicleActivity;->mTitle:Landroid/widget/EditText;

    const v3, 0x7f080067

    invoke-direct {v1, v2, v3}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v1
.end method
