.class public Lcom/evancharlton/mileage/ServiceIntervalActivity;
.super Lcom/evancharlton/mileage/BaseFormActivity;
.source "ServiceIntervalActivity.java"


# instance fields
.field private mDate:Lcom/evancharlton/mileage/views/DateButton;

.field private mDescription:Landroid/widget/EditText;

.field private mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

.field private mDuration:Lcom/evancharlton/mileage/views/DateDelta;

.field private final mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

.field private mIntervalTemplates:Lcom/evancharlton/mileage/views/CursorSpinner;

.field private mOdometer:Landroid/widget/EditText;

.field private mTitle:Landroid/widget/EditText;

.field private mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/evancharlton/mileage/BaseFormActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/evancharlton/mileage/dao/ServiceInterval;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    return-void
.end method

.method static synthetic access$000(Lcom/evancharlton/mileage/ServiceIntervalActivity;J)V
    .locals 0
    .param p0, "x0"    # Lcom/evancharlton/mileage/ServiceIntervalActivity;
    .param p1, "x1"    # J

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->filterTemplates(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/evancharlton/mileage/ServiceIntervalActivity;)Lcom/evancharlton/mileage/dao/ServiceInterval;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ServiceIntervalActivity;

    .line 28
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    return-object v0
.end method

.method static synthetic access$200(Lcom/evancharlton/mileage/ServiceIntervalActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ServiceIntervalActivity;

    .line 28
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mOdometer:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/evancharlton/mileage/ServiceIntervalActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ServiceIntervalActivity;

    .line 28
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mTitle:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/evancharlton/mileage/ServiceIntervalActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ServiceIntervalActivity;

    .line 28
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDescription:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/evancharlton/mileage/ServiceIntervalActivity;)Lcom/evancharlton/mileage/views/DistanceDelta;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ServiceIntervalActivity;

    .line 28
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    return-object v0
.end method

.method static synthetic access$600(Lcom/evancharlton/mileage/ServiceIntervalActivity;)Lcom/evancharlton/mileage/views/DateDelta;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ServiceIntervalActivity;

    .line 28
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDuration:Lcom/evancharlton/mileage/views/DateDelta;

    return-object v0
.end method

.method private filterTemplates(J)V
    .locals 4
    .param p1, "id"    # J

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v0, "selection":Ljava/lang/StringBuilder;
    const-string v1, "vehicle_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ( select "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vehicle_type_id"

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from vehicles where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " =  ?)"

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 141
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 143
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mIntervalTemplates:Lcom/evancharlton/mileage/views/CursorSpinner;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/evancharlton/mileage/views/CursorSpinner;->filter(Ljava/lang/String;[Ljava/lang/String;)V

    .line 144
    return-void
.end method


# virtual methods
.method public canDelete()Z
    .locals 6

    .line 208
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->BASE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 209
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

    .line 203
    const v0, 0x7f08000f

    return v0
.end method

.method protected getDao()Lcom/evancharlton/mileage/dao/Dao;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    return-object v0
.end method

.method protected getProjectionArray()[Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected getUri(J)Landroid/net/Uri;
    .locals 2
    .param p1, "id"    # J

    .line 64
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "intervals/"

    .line 65
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 64
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected initUI()V
    .locals 2

    .line 70
    const v0, 0x7f050036

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/CursorSpinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    .line 71
    const v0, 0x7f050032

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/CursorSpinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mIntervalTemplates:Lcom/evancharlton/mileage/views/CursorSpinner;

    .line 72
    const v0, 0x7f050030

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mTitle:Landroid/widget/EditText;

    .line 73
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDescription:Landroid/widget/EditText;

    .line 74
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/DistanceDelta;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    .line 75
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/DateDelta;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDuration:Lcom/evancharlton/mileage/views/DateDelta;

    .line 76
    const v0, 0x7f050024

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mOdometer:Landroid/widget/EditText;

    .line 77
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/views/DateButton;

    iput-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDate:Lcom/evancharlton/mileage/views/DateButton;

    .line 79
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    new-instance v1, Lcom/evancharlton/mileage/ServiceIntervalActivity$1;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/ServiceIntervalActivity$1;-><init>(Lcom/evancharlton/mileage/ServiceIntervalActivity;)V

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/views/CursorSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 109
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mIntervalTemplates:Lcom/evancharlton/mileage/views/CursorSpinner;

    new-instance v1, Lcom/evancharlton/mileage/ServiceIntervalActivity$2;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/ServiceIntervalActivity$2;-><init>(Lcom/evancharlton/mileage/ServiceIntervalActivity;)V

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/views/CursorSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 133
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    const v0, 0x7f070019

    invoke-super {p0, p1, v0}, Lcom/evancharlton/mileage/BaseFormActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 50
    return-void
.end method

.method protected populateUI()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mTitle:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDescription:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getDistance()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/views/DistanceDelta;->setDelta(J)V

    .line 151
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDuration:Lcom/evancharlton/mileage/views/DateDelta;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/views/DateDelta;->setDelta(J)V

    .line 152
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mOdometer:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getStartOdometer()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDate:Lcom/evancharlton/mileage/views/DateButton;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getStartDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/views/DateButton;->setDate(J)V

    .line 154
    return-void
.end method

.method protected saved()V
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v0, p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->deleteAlarm(Landroid/content/Context;)V

    .line 197
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getStartDate()J

    move-result-wide v1

    iget-object v3, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getDuration()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/evancharlton/mileage/dao/ServiceInterval;->scheduleAlarm(Landroid/content/Context;J)V

    .line 198
    invoke-super {p0}, Lcom/evancharlton/mileage/BaseFormActivity;->saved()V

    .line 199
    return-void
.end method

.method protected setFields()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->setTitle(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    iget-object v2, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/evancharlton/mileage/dao/ServiceInterval;->setDescription(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDuration:Lcom/evancharlton/mileage/views/DateDelta;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/views/DateDelta;->getDelta()J

    move-result-wide v1

    .line 167
    .local v1, "duration":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 170
    iget-object v5, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v5, v1, v2}, Lcom/evancharlton/mileage/dao/ServiceInterval;->setDuration(J)V

    .line 173
    :try_start_0
    iget-object v5, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    iget-object v6, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mOdometer:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/evancharlton/mileage/dao/ServiceInterval;->setStartOdometer(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    nop

    .line 178
    iget-object v5, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDate:Lcom/evancharlton/mileage/views/DateButton;

    invoke-virtual {v5}, Lcom/evancharlton/mileage/views/DateButton;->getTimestamp()J

    move-result-wide v5

    .line 179
    .local v5, "timestamp":J
    cmp-long v7, v5, v3

    if-eqz v7, :cond_1

    .line 182
    iget-object v7, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    invoke-virtual {v7, v5, v6}, Lcom/evancharlton/mileage/dao/ServiceInterval;->setStartDate(J)V

    .line 184
    iget-object v7, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    invoke-virtual {v7}, Lcom/evancharlton/mileage/views/DistanceDelta;->getDelta()J

    move-result-wide v7

    .line 185
    .local v7, "distance":J
    cmp-long v9, v7, v3

    if-eqz v9, :cond_0

    .line 189
    iget-object v3, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    iget-object v4, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/views/DistanceDelta;->getDelta()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/evancharlton/mileage/dao/ServiceInterval;->setDistance(J)V

    .line 191
    iget-object v3, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mInterval:Lcom/evancharlton/mileage/dao/ServiceInterval;

    iget-object v4, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mVehicles:Lcom/evancharlton/mileage/views/CursorSpinner;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/views/CursorSpinner;->getSelectedItemId()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/evancharlton/mileage/dao/ServiceInterval;->setVehicleId(J)V

    .line 192
    return-void

    .line 186
    :cond_0
    new-instance v3, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v4, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDistance:Lcom/evancharlton/mileage/views/DistanceDelta;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/views/DistanceDelta;->getEditField()Landroid/widget/TextView;

    move-result-object v4

    const v9, 0x7f080057

    invoke-direct {v3, v4, v9}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v3

    .line 180
    .end local v7    # "distance":J
    :cond_1
    new-instance v3, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    const v4, 0x7f08005a

    invoke-direct {v3, v4}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(I)V

    throw v3

    .line 174
    .end local v5    # "timestamp":J
    :catch_0
    move-exception v3

    .line 175
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v5, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mOdometer:Landroid/widget/EditText;

    const v6, 0x7f080059

    invoke-direct {v4, v5, v6}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v4

    .line 168
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v3, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v4, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mDescription:Landroid/widget/EditText;

    const v5, 0x7f080058

    invoke-direct {v3, v4, v5}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v3

    .line 160
    .end local v1    # "duration":J
    :cond_3
    new-instance v1, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    iget-object v2, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity;->mTitle:Landroid/widget/EditText;

    const v3, 0x7f08005b

    invoke-direct {v1, v2, v3}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(Landroid/widget/TextView;I)V

    throw v1
.end method
