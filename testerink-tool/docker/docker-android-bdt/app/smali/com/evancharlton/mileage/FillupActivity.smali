.class public Lcom/evancharlton/mileage/FillupActivity;
.super Lcom/evancharlton/mileage/BaseFormActivity;
.source "FillupActivity.java"


# instance fields
.field private mDate:Lcom/evancharlton/mileage/views/DateButton;

.field private final mFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/evancharlton/mileage/views/FieldView;",
            ">;"
        }
    .end annotation
.end field

.field private mFieldsContainer:Landroid/widget/LinearLayout;

.field private mFillup:Lcom/evancharlton/mileage/dao/Fillup;

.field private mIcicle:Landroid/os/Bundle;

.field private mOdometer:Landroid/widget/EditText;

.field private mPartial:Landroid/widget/CheckBox;

.field private mPrice:Landroid/widget/EditText;

.field private mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

.field private mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

.field private mVolume:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/evancharlton/mileage/BaseFormActivity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mFields:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Lcom/evancharlton/mileage/dao/Fillup;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    return-void
.end method

.method static synthetic access$002(Lcom/evancharlton/mileage/FillupActivity;Lcom/evancharlton/mileage/dao/Vehicle;)Lcom/evancharlton/mileage/dao/Vehicle;
    .locals 0
    .param p0, "x0"    # Lcom/evancharlton/mileage/FillupActivity;
    .param p1, "x1"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .line 47
    iput-object p1, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    return-object p1
.end method

.method static synthetic access$100(Lcom/evancharlton/mileage/FillupActivity;)Lcom/evancharlton/mileage/dao/Vehicle;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/FillupActivity;

    .line 47
    invoke-direct {p0}, Lcom/evancharlton/mileage/FillupActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v0

    return-object v0
.end method

.method private final getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/dao/Vehicle;->loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    return-object v0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load vehicle #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    .line 83
    invoke-virtual {v2}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setDataFormats()V
    .locals 7

    .line 262
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "data_format"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 263
    .local v0, "dataFormat":I
    iget-object v1, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Fillup;->isExistingObject()Z

    move-result v1

    .line 264
    .local v1, "existing":Z
    const v2, 0x7f080113

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f080090

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 283
    :pswitch_0
    iget-object v6, p0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 284
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    new-array v4, v4, [Ljava/lang/Object;

    .line 285
    invoke-direct {p0}, Lcom/evancharlton/mileage/FillupActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/evancharlton/mileage/math/Calculator;->getVolumeUnits(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    .line 284
    invoke-virtual {p0, v5, v4}, Lcom/evancharlton/mileage/FillupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 286
    if-eqz v1, :cond_0

    .line 287
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getUnitPrice()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 275
    :pswitch_1
    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/evancharlton/mileage/FillupActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/evancharlton/mileage/math/Calculator;->getVolumeUnits(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 277
    if-eqz v1, :cond_0

    .line 278
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getVolume()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 266
    :pswitch_2
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/evancharlton/mileage/FillupActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/evancharlton/mileage/math/Calculator;->getVolumeUnits(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    new-array v4, v4, [Ljava/lang/Object;

    .line 268
    invoke-direct {p0}, Lcom/evancharlton/mileage/FillupActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/evancharlton/mileage/math/Calculator;->getVolumeUnits(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    .line 267
    invoke-virtual {p0, v5, v4}, Lcom/evancharlton/mileage/FillupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 269
    if-eqz v1, :cond_0

    .line 270
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getVolume()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getUnitPrice()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected deleted()V
    .locals 6

    .line 446
    invoke-virtual {p0}, Lcom/evancharlton/mileage/FillupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/evancharlton/mileage/provider/tables/CacheTable;->BASE_URI:Landroid/net/Uri;

    const-string v2, "key = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/evancharlton/mileage/provider/Statistics;->AVG_ECONOMY:Lcom/evancharlton/mileage/provider/Statistic;

    .line 447
    invoke-virtual {v4}, Lcom/evancharlton/mileage/provider/Statistic;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 446
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 449
    invoke-super {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->deleted()V

    .line 450
    return-void
.end method

.method protected getCreateString()I
    .locals 1

    .line 454
    const v0, 0x7f08000e

    return v0
.end method

.method protected getDao()Lcom/evancharlton/mileage/dao/Dao;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    return-object v0
.end method

.method protected getProjectionArray()[Ljava/lang/String;
    .locals 1

    .line 211
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected getUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "id"    # J

    .line 216
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected initUI()V
    .locals 2

    .line 221
    const v0, 0x7f050024

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mOdometer:Landroid/widget/EditText;

    .line 222
    const v0, 0x7f050037

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    .line 223
    const v0, 0x7f050029

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    .line 224
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/DateButton;

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mDate:Lcom/evancharlton/mileage/views/DateButton;

    .line 225
    const v0, 0x7f050027

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mPartial:Landroid/widget/CheckBox;

    .line 226
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mFieldsContainer:Landroid/widget/LinearLayout;

    .line 227
    const v0, 0x7f050035

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/CursorSpinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    .line 229
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    new-instance v1, Lcom/evancharlton/mileage/FillupActivity$1;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/FillupActivity$1;-><init>(Lcom/evancharlton/mileage/FillupActivity;)V

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/views/CursorSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 241
    invoke-direct {p0}, Lcom/evancharlton/mileage/FillupActivity;->setDataFormats()V

    .line 242
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 72
    const v0, 0x7f07000d

    invoke-super {p0, p1, v0}, Lcom/evancharlton/mileage/BaseFormActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 74
    iput-object p1, p0, Lcom/evancharlton/mileage/FillupActivity;->mIcicle:Landroid/os/Bundle;

    .line 75
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 150
    const v0, 0x7f080048

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/evancharlton/mileage/FieldListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    .line 152
    const v1, 0x7f040005

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 153
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseFormActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 11

    .line 90
    invoke-super {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->onResume()V

    .line 92
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "fields/"

    .line 93
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/evancharlton/mileage/FillupActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 95
    .local v0, "fields":Landroid/database/Cursor;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 96
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mFieldsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 98
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v2, "fieldMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/evancharlton/mileage/dao/FillupField;>;"
    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->isExistingObject()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3, p0}, Lcom/evancharlton/mileage/dao/Fillup;->getFields(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 102
    .local v3, "objectFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/evancharlton/mileage/dao/FillupField;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/evancharlton/mileage/dao/FillupField;

    .line 103
    .local v5, "field":Lcom/evancharlton/mileage/dao/FillupField;
    invoke-virtual {v5}, Lcom/evancharlton/mileage/dao/FillupField;->getTemplateId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v5    # "field":Lcom/evancharlton/mileage/dao/FillupField;
    goto :goto_0

    .line 107
    .end local v3    # "objectFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/evancharlton/mileage/dao/FillupField;>;"
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 108
    const v3, 0x7f070004

    iget-object v4, p0, Lcom/evancharlton/mileage/FillupActivity;->mFieldsContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    .line 109
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/evancharlton/mileage/views/DividerView;

    .line 110
    .local v3, "divider":Lcom/evancharlton/mileage/views/DividerView;
    const v4, 0x7f080038

    invoke-virtual {v3, v4}, Lcom/evancharlton/mileage/views/DividerView;->setText(I)V

    .line 111
    iget-object v4, p0, Lcom/evancharlton/mileage/FillupActivity;->mFieldsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    .end local v3    # "divider":Lcom/evancharlton/mileage/views/DividerView;
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 115
    const-string v3, "title"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "hint":Ljava/lang/String;
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 117
    .local v4, "id":J
    const v6, 0x7f07000e

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 118
    .local v6, "container":Landroid/view/View;
    const v7, 0x7f050016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/evancharlton/mileage/views/FieldView;

    .line 119
    .local v7, "field":Lcom/evancharlton/mileage/views/FieldView;
    invoke-virtual {v7, v4, v5}, Lcom/evancharlton/mileage/views/FieldView;->setFieldId(J)V

    .line 120
    long-to-int v8, v4

    invoke-virtual {v7, v8}, Lcom/evancharlton/mileage/views/FieldView;->setId(I)V

    .line 121
    invoke-virtual {v7, v3}, Lcom/evancharlton/mileage/views/FieldView;->setHint(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v8, p0, Lcom/evancharlton/mileage/FillupActivity;->mFieldsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    iget-object v8, p0, Lcom/evancharlton/mileage/FillupActivity;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v8, p0, Lcom/evancharlton/mileage/FillupActivity;->mIcicle:Landroid/os/Bundle;

    if-nez v8, :cond_2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 126
    :cond_2
    const/4 v8, 0x0

    .line 127
    .local v8, "value":Ljava/lang/String;
    iget-object v9, p0, Lcom/evancharlton/mileage/FillupActivity;->mIcicle:Landroid/os/Bundle;

    if-eqz v9, :cond_3

    .line 128
    iget-object v9, p0, Lcom/evancharlton/mileage/FillupActivity;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {v7}, Lcom/evancharlton/mileage/views/FieldView;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 130
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 131
    invoke-virtual {v7, v8}, Lcom/evancharlton/mileage/views/FieldView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 133
    :cond_4
    iget-object v9, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v9}, Lcom/evancharlton/mileage/dao/Fillup;->isExistingObject()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 135
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/evancharlton/mileage/dao/FillupField;

    .line 136
    .local v9, "objectField":Lcom/evancharlton/mileage/dao/FillupField;
    if-eqz v9, :cond_5

    .line 137
    invoke-virtual {v9}, Lcom/evancharlton/mileage/dao/FillupField;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/evancharlton/mileage/views/FieldView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .end local v3    # "hint":Ljava/lang/String;
    .end local v4    # "id":J
    .end local v6    # "container":Landroid/view/View;
    .end local v7    # "field":Lcom/evancharlton/mileage/views/FieldView;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "objectField":Lcom/evancharlton/mileage/dao/FillupField;
    :cond_5
    :goto_2
    goto :goto_1

    .line 143
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_7

    .line 144
    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFieldsContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    :cond_7
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 158
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseFormActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 160
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/views/FieldView;

    .line 161
    .local v1, "fieldView":Lcom/evancharlton/mileage/views/FieldView;
    invoke-virtual {v1}, Lcom/evancharlton/mileage/views/FieldView;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evancharlton/mileage/views/FieldView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .end local v1    # "fieldView":Lcom/evancharlton/mileage/views/FieldView;
    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method protected populateUI()V
    .locals 6

    .line 246
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v0

    .line 247
    .local v0, "odometer":D
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v2

    .line 248
    .end local v0    # "odometer":D
    .local v4, "odometer":D
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mOdometer:Landroid/widget/EditText;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mDate:Lcom/evancharlton/mileage/views/DateButton;

    iget-object v1, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Fillup;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/views/DateButton;->setDate(J)V

    .line 250
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mPartial:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 252
    invoke-direct {p0}, Lcom/evancharlton/mileage/FillupActivity;->setDataFormats()V

    .line 254
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->isExistingObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const v0, 0x7f080100

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mDate:Lcom/evancharlton/mileage/views/DateButton;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/views/DateButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/evancharlton/mileage/FillupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    iget-object v1, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Fillup;->getVehicleId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/views/CursorSpinner;->setSelectedId(J)V

    .line 259
    :cond_0
    return-void
.end method

.method protected postSaveValidation()Z
    .locals 5

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupActivity;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/views/FieldView;

    .line 169
    .local v1, "fieldView":Lcom/evancharlton/mileage/views/FieldView;
    new-instance v2, Lcom/evancharlton/mileage/dao/FillupField;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v2, v3}, Lcom/evancharlton/mileage/dao/FillupField;-><init>(Landroid/content/ContentValues;)V

    .line 170
    .local v2, "field":Lcom/evancharlton/mileage/dao/FillupField;
    iget-object v3, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/evancharlton/mileage/dao/FillupField;->setFillupId(J)V

    .line 171
    invoke-virtual {v1}, Lcom/evancharlton/mileage/views/FieldView;->getFieldId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/evancharlton/mileage/dao/FillupField;->setTemplateId(J)V

    .line 172
    invoke-virtual {v1}, Lcom/evancharlton/mileage/views/FieldView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/evancharlton/mileage/dao/FillupField;->setValue(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2, p0}, Lcom/evancharlton/mileage/dao/FillupField;->save(Landroid/content/Context;)Z
    :try_end_0
    .catch Lcom/evancharlton/mileage/exceptions/InvalidFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v1    # "fieldView":Lcom/evancharlton/mileage/views/FieldView;
    .end local v2    # "field":Lcom/evancharlton/mileage/dao/FillupField;
    goto :goto_0

    .line 175
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "exception":Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupActivity;->handleInvalidField(Lcom/evancharlton/mileage/exceptions/InvalidFieldException;)V

    .line 180
    .end local v0    # "exception":Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
    const/4 v0, 0x0

    return v0
.end method

.method protected saved()V
    .locals 7

    .line 186
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 187
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "is_valid"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/evancharlton/mileage/FillupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/evancharlton/mileage/provider/tables/CacheTable;->BASE_URI:Landroid/net/Uri;

    const-string v3, "item = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/evancharlton/mileage/FillupActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    .line 190
    invoke-virtual {v5}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 188
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lcom/evancharlton/mileage/FillupActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 194
    .local v1, "parent":Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/evancharlton/mileage/FillupActivity;->finish()V

    goto :goto_0

    .line 196
    :cond_0
    instance-of v2, v1, Lcom/evancharlton/mileage/Mileage;

    if-eqz v2, :cond_1

    .line 197
    move-object v2, v1

    check-cast v2, Lcom/evancharlton/mileage/Mileage;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/Mileage;->switchToHistoryTab()V

    .line 200
    :cond_1
    :goto_0
    new-instance v2, Lcom/evancharlton/mileage/dao/Fillup;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v2, v3}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/content/ContentValues;)V

    iput-object v2, p0, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    .line 201
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/FillupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    return-void
.end method

.method protected setFields()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .line 296
    move-object/from16 v7, p0

    const-wide/16 v1, 0x0

    .line 297
    .local v1, "unitPrice":D
    const-wide/16 v3, 0x0

    .line 298
    .local v3, "totalCost":D
    const-wide/16 v5, 0x0

    .line 299
    .local v5, "volume":D
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v8, "data_format"

    const-string v9, "0"

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 300
    .local v8, "dataFormat":I
    const v9, 0x7f08006e

    const v10, 0x7f08006f

    const v11, 0x7f080071

    packed-switch v8, :pswitch_data_0

    .line 338
    :try_start_0
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7

    goto/16 :goto_0

    .line 320
    :pswitch_0
    :try_start_1
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    move-wide v3, v11

    .line 321
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v0, v3, v4}, Lcom/evancharlton/mileage/dao/Fillup;->setTotalCost(D)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 324
    nop

    .line 327
    :try_start_2
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    move-wide v1, v10

    .line 328
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/dao/Fillup;->setUnitPrice(D)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 331
    nop

    .line 332
    div-double v5, v3, v1

    .line 333
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v0, v5, v6}, Lcom/evancharlton/mileage/dao/Fillup;->setVolume(D)V

    .line 334
    goto/16 :goto_1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v10, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v11, v7, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    invoke-direct {v10, v11, v9}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v10

    .line 322
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 323
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v9, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v11, v7, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    invoke-direct {v9, v11, v10}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v9

    .line 303
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1
    :try_start_3
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    move-wide v5, v12

    .line 304
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v0, v5, v6}, Lcom/evancharlton/mileage/dao/Fillup;->setVolume(D)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 307
    nop

    .line 310
    :try_start_4
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    move-wide v3, v11

    .line 311
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v0, v3, v4}, Lcom/evancharlton/mileage/dao/Fillup;->setTotalCost(D)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    .line 314
    nop

    .line 315
    div-double v1, v3, v5

    .line 316
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/dao/Fillup;->setUnitPrice(D)V

    .line 317
    goto :goto_1

    .line 312
    :catch_2
    move-exception v0

    .line 313
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v9, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v11, v7, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    invoke-direct {v9, v11, v10}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v9

    .line 305
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v0

    .line 306
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v9, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v10, v7, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    invoke-direct {v9, v10, v11}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v9

    .line 338
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    :try_start_5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    move-wide v5, v12

    .line 339
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v0, v5, v6}, Lcom/evancharlton/mileage/dao/Fillup;->setVolume(D)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_7

    .line 342
    nop

    .line 345
    :try_start_6
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    move-wide v1, v10

    .line 346
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/dao/Fillup;->setUnitPrice(D)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 349
    nop

    .line 350
    mul-double v3, v1, v5

    .line 351
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v0, v3, v4}, Lcom/evancharlton/mileage/dao/Fillup;->setTotalCost(D)V

    .line 356
    .end local v1    # "unitPrice":D
    .end local v3    # "totalCost":D
    .end local v5    # "volume":D
    .local v9, "totalCost":D
    .local v11, "volume":D
    .local v13, "unitPrice":D
    :goto_1
    move-wide v13, v1

    move-wide v9, v3

    move-wide v11, v5

    :try_start_7
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mOdometer:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "odometerText":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 358
    .local v1, "odometerValue":D
    const-string v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5

    if-eqz v3, :cond_1

    .line 359
    :try_start_8
    iget-object v3, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3, v7}, Lcom/evancharlton/mileage/dao/Fillup;->loadPrevious(Landroid/content/Context;)Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v3

    .line 360
    .local v3, "previous":Lcom/evancharlton/mileage/dao/Fillup;
    const-wide/16 v4, 0x0

    .line 361
    .local v4, "previousOdometer":D
    if-nez v3, :cond_0

    .line 362
    nop

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/FillupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v17, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    sget-object v18, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "odometer DESC"

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 365
    .local v6, "top":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v16

    if-lez v16, :cond_0

    .line 366
    new-instance v15, Lcom/evancharlton/mileage/dao/Fillup;

    invoke-direct {v15, v6}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/database/Cursor;)V

    move-object v3, v15

    .line 367
    nop

    .line 368
    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v15

    move-wide v4, v15

    .line 372
    .end local v6    # "top":Landroid/database/Cursor;
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_4

    const/4 v6, 0x0

    add-double/2addr v4, v15

    .line 373
    .end local v1    # "odometerValue":D
    .end local v3    # "previous":Lcom/evancharlton/mileage/dao/Fillup;
    .local v4, "odometerValue":D
    goto :goto_2

    .line 377
    .end local v0    # "odometerText":Ljava/lang/String;
    .end local v4    # "odometerValue":D
    :catch_4
    move-exception v0

    move/from16 v22, v8

    move-wide/from16 v23, v9

    goto/16 :goto_6

    .line 374
    .restart local v0    # "odometerText":Ljava/lang/String;
    .restart local v1    # "odometerValue":D
    :cond_1
    :try_start_9
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    move-wide v4, v3

    .line 376
    .end local v1    # "odometerValue":D
    .restart local v4    # "odometerValue":D
    :goto_2
    iget-object v1, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v1, v4, v5}, Lcom/evancharlton/mileage/dao/Fillup;->setOdometer(D)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_5

    .line 379
    .end local v0    # "odometerText":Ljava/lang/String;
    .end local v4    # "odometerValue":D
    nop

    .line 381
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    iget-object v1, v7, Lcom/evancharlton/mileage/FillupActivity;->mPartial:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;->setPartial(Z)V

    .line 382
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    iget-object v1, v7, Lcom/evancharlton/mileage/FillupActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/dao/Fillup;->setVehicleId(J)V

    .line 383
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    iget-object v1, v7, Lcom/evancharlton/mileage/FillupActivity;->mDate:Lcom/evancharlton/mileage/views/DateButton;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/views/DateButton;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/dao/Fillup;->setTimestamp(J)V

    .line 385
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v0

    const/4 v15, 0x2

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 386
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v0, v5, v6}, Lcom/evancharlton/mileage/dao/Fillup;->setEconomy(D)V

    .line 415
    move/from16 v22, v8

    move-wide/from16 v23, v9

    .end local v8    # "dataFormat":I
    .end local v9    # "totalCost":D
    .local v22, "dataFormat":I
    .local v23, "totalCost":D
    :cond_2
    :goto_3
    const/4 v6, 0x0

    goto :goto_5

    .line 389
    .end local v22    # "dataFormat":I
    .end local v23    # "totalCost":D
    .restart local v8    # "dataFormat":I
    .restart local v9    # "totalCost":D
    :cond_3
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->BASE_URI:Landroid/net/Uri;

    iget-object v1, v7, Lcom/evancharlton/mileage/FillupActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    .line 391
    invoke-virtual {v1}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v1

    .line 390
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 393
    .local v0, "vehicleUri":Landroid/net/Uri;
    const/16 v16, 0x0

    .line 394
    .local v16, "v":Lcom/evancharlton/mileage/dao/Vehicle;
    sget-object v3, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->PROJECTION:[Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 395
    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v4, v17

    move/from16 v22, v8

    move-wide/from16 v23, v9

    move-wide v8, v5

    .end local v8    # "dataFormat":I
    .end local v9    # "totalCost":D
    .restart local v22    # "dataFormat":I
    .restart local v23    # "totalCost":D
    move-object/from16 v5, v18

    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lcom/evancharlton/mileage/FillupActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 396
    .local v1, "vehicleCursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 397
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 398
    new-instance v2, Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-direct {v2, v1}, Lcom/evancharlton/mileage/dao/Vehicle;-><init>(Landroid/database/Cursor;)V

    .line 399
    .end local v16    # "v":Lcom/evancharlton/mileage/dao/Vehicle;
    .local v2, "v":Lcom/evancharlton/mileage/dao/Vehicle;
    const/4 v3, 0x0

    .line 400
    .restart local v3    # "previous":Lcom/evancharlton/mileage/dao/Fillup;
    iget-object v4, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Fillup;->isExistingObject()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 401
    iget-object v4, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v4, v7}, Lcom/evancharlton/mileage/dao/Fillup;->loadPrevious(Landroid/content/Context;)Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v3

    goto :goto_4

    .line 403
    :cond_4
    invoke-virtual {v2, v7}, Lcom/evancharlton/mileage/dao/Vehicle;->loadLatestFillup(Landroid/content/Context;)Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v3

    .line 405
    :goto_4
    if-nez v3, :cond_5

    .line 406
    iget-object v4, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v4, v8, v9}, Lcom/evancharlton/mileage/dao/Fillup;->setEconomy(D)V

    goto :goto_3

    .line 408
    :cond_5
    new-instance v4, Lcom/evancharlton/mileage/dao/FillupSeries;

    new-array v5, v15, [Lcom/evancharlton/mileage/dao/Fillup;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    iget-object v8, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    const/4 v9, 0x1

    aput-object v8, v5, v9

    invoke-direct {v4, v5}, Lcom/evancharlton/mileage/dao/FillupSeries;-><init>([Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 409
    invoke-static {v2, v4}, Lcom/evancharlton/mileage/math/Calculator;->averageEconomy(Lcom/evancharlton/mileage/dao/Vehicle;Lcom/evancharlton/mileage/dao/FillupSeries;)D

    move-result-wide v4

    .line 410
    .local v4, "economy":D
    iget-object v8, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v8, v4, v5}, Lcom/evancharlton/mileage/dao/Fillup;->setEconomy(D)V

    .line 415
    .end local v0    # "vehicleUri":Landroid/net/Uri;
    .end local v1    # "vehicleCursor":Landroid/database/Cursor;
    .end local v2    # "v":Lcom/evancharlton/mileage/dao/Vehicle;
    .end local v3    # "previous":Lcom/evancharlton/mileage/dao/Fillup;
    .end local v4    # "economy":D
    :goto_5
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "location_data"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    .line 416
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->isExistingObject()Z

    move-result v0

    if-nez v0, :cond_6

    .line 418
    const-string v0, "location"

    invoke-virtual {v7, v0}, Lcom/evancharlton/mileage/FillupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 419
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "network"

    .line 420
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 423
    .local v1, "lastLocation":Landroid/location/Location;
    if-eqz v1, :cond_6

    .line 424
    iget-object v2, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/evancharlton/mileage/dao/Fillup;->setLatitude(D)V

    .line 425
    iget-object v2, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/evancharlton/mileage/dao/Fillup;->setLongitude(D)V

    .line 429
    .end local v0    # "locationManager":Landroid/location/LocationManager;
    .end local v1    # "lastLocation":Landroid/location/Location;
    :cond_6
    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->isExistingObject()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v0

    if-nez v0, :cond_8

    .line 430
    :cond_7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 431
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "economy"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/FillupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    const-string v3, "odometer > ? AND vehicle_id = ?"

    new-array v4, v15, [Ljava/lang/String;

    iget-object v5, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    .line 437
    invoke-virtual {v5}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, v7, Lcom/evancharlton/mileage/FillupActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    .line 438
    invoke-virtual {v5}, Lcom/evancharlton/mileage/dao/Fillup;->getVehicleId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 432
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 440
    iget-object v1, v7, Lcom/evancharlton/mileage/FillupActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-static {v7, v1}, Lcom/evancharlton/mileage/services/RecalculateEconomyService;->run(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)V

    .line 442
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_8
    return-void

    .line 377
    .end local v22    # "dataFormat":I
    .end local v23    # "totalCost":D
    .restart local v8    # "dataFormat":I
    .restart local v9    # "totalCost":D
    :catch_5
    move-exception v0

    move/from16 v22, v8

    move-wide/from16 v23, v9

    .line 378
    .end local v8    # "dataFormat":I
    .end local v9    # "totalCost":D
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v22    # "dataFormat":I
    .restart local v23    # "totalCost":D
    :goto_6
    new-instance v1, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v2, v7, Lcom/evancharlton/mileage/FillupActivity;->mOdometer:Landroid/widget/EditText;

    const v3, 0x7f08006d

    invoke-direct {v1, v2, v3}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v1

    .line 347
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v11    # "volume":D
    .end local v13    # "unitPrice":D
    .end local v22    # "dataFormat":I
    .end local v23    # "totalCost":D
    .local v1, "unitPrice":D
    .local v3, "totalCost":D
    .restart local v5    # "volume":D
    .restart local v8    # "dataFormat":I
    :catch_6
    move-exception v0

    move/from16 v22, v8

    .line 348
    .end local v8    # "dataFormat":I
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v22    # "dataFormat":I
    new-instance v8, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v10, v7, Lcom/evancharlton/mileage/FillupActivity;->mPrice:Landroid/widget/EditText;

    invoke-direct {v8, v10, v9}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v8

    .line 340
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v22    # "dataFormat":I
    .restart local v8    # "dataFormat":I
    :catch_7
    move-exception v0

    move/from16 v22, v8

    .line 341
    .end local v8    # "dataFormat":I
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v22    # "dataFormat":I
    new-instance v8, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v9, v7, Lcom/evancharlton/mileage/FillupActivity;->mVolume:Landroid/widget/EditText;

    invoke-direct {v8, v9, v11}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
