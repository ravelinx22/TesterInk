.class public Lcom/evancharlton/mileage/adapters/FillupAdapter;
.super Landroid/widget/BaseAdapter;
.source "FillupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;
    }
.end annotation


# static fields
.field private static final ECONOMY_FORMAT:Ljava/text/DecimalFormat;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FillupAdapter"

.field private static final VOLUME_FORMAT:Ljava/text/DecimalFormat;


# instance fields
.field private mAvgEconomy:D

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mEconomyUnits:Ljava/lang/String;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

.field private mVolumeUnits:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->ECONOMY_FORMAT:Ljava/text/DecimalFormat;

    .line 31
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->VOLUME_FORMAT:Ljava/text/DecimalFormat;

    .line 33
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .line 55
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    new-instance v0, Lcom/evancharlton/mileage/adapters/FillupAdapter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/evancharlton/mileage/adapters/FillupAdapter$1;-><init>(Lcom/evancharlton/mileage/adapters/FillupAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mObserver:Landroid/database/ContentObserver;

    .line 56
    iput-object p1, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 59
    invoke-virtual {p0, p2}, Lcom/evancharlton/mileage/adapters/FillupAdapter;->setVehicle(Lcom/evancharlton/mileage/dao/Vehicle;)V

    .line 60
    return-void
.end method


# virtual methods
.method public calculationFinished(D)V
    .locals 3
    .param p1, "avgEconomy"    # D

    .line 179
    const-string v0, "FillupAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Average economy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput-wide p1, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mAvgEconomy:D

    .line 181
    invoke-virtual {p0}, Lcom/evancharlton/mileage/adapters/FillupAdapter;->notifyDataSetChanged()V

    .line 182
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .line 89
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lcom/evancharlton/mileage/dao/Fillup;

    iget-object v1, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/database/Cursor;)V

    return-object v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .line 97
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 100
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 105
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 107
    if-nez p2, :cond_0

    .line 108
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mContext:Landroid/content/Context;

    .line 109
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f070011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 112
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;

    .line 113
    .local v0, "holder":Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;
    if-nez v0, :cond_1

    .line 114
    new-instance v1, Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;

    invoke-direct {v1, p2}, Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;-><init>(Landroid/view/View;)V

    move-object v0, v1

    .line 119
    :cond_1
    iget-object v1, v0, Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;->dateView:Lcom/evancharlton/mileage/views/FormattedDateView;

    iget-object v2, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    const-string v4, "timestamp"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/evancharlton/mileage/views/FormattedDateView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/evancharlton/mileage/adapters/FillupAdapter;->VOLUME_FORMAT:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    const-string v5, "volume"

    .line 122
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mVolumeUnits:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "value":Ljava/lang/String;
    iget-object v2, v0, Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;->volume:Lcom/evancharlton/mileage/views/FormattedNumberView;

    invoke-virtual {v2, v1}, Lcom/evancharlton/mileage/views/FormattedNumberView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v2, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Vehicle;->getCurrency()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "currency":Ljava/lang/String;
    iget-object v3, v0, Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;->price:Lcom/evancharlton/mileage/views/FormattedCurrencyView;

    invoke-virtual {v3, v2}, Lcom/evancharlton/mileage/views/FormattedCurrencyView;->setCurrencySymbol(Ljava/lang/String;)V

    .line 128
    iget-object v3, v0, Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;->price:Lcom/evancharlton/mileage/views/FormattedCurrencyView;

    iget-object v4, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    const-string v6, "price"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/evancharlton/mileage/views/FormattedCurrencyView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v3, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    const-string v5, "economy"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    .line 135
    .local v3, "economy":D
    iget-object v5, v0, Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;->economy:Lcom/evancharlton/mileage/views/FormattedNumberView;

    iget-object v6, v0, Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;->metaField:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/evancharlton/mileage/views/FormattedNumberView;->setTextColor(I)V

    .line 136
    iget-object v5, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    const-string v7, "is_partial"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 137
    iget-object v5, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0800de

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 138
    :cond_2
    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-nez v7, :cond_3

    .line 139
    const-string v1, ""

    goto :goto_0

    .line 141
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/evancharlton/mileage/adapters/FillupAdapter;->ECONOMY_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v8, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mEconomyUnits:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    iget-wide v7, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mAvgEconomy:D

    cmpl-double v9, v7, v5

    if-lez v9, :cond_5

    .line 143
    iget-object v5, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    iget-wide v6, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mAvgEconomy:D

    invoke-static {v5, v3, v4, v6, v7}, Lcom/evancharlton/mileage/math/Calculator;->isBetterEconomy(Lcom/evancharlton/mileage/dao/Vehicle;DD)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 144
    iget-object v5, v0, Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;->economy:Lcom/evancharlton/mileage/views/FormattedNumberView;

    const v6, -0xf547f9

    invoke-virtual {v5, v6}, Lcom/evancharlton/mileage/views/FormattedNumberView;->setTextColor(I)V

    goto :goto_0

    .line 146
    :cond_4
    iget-object v5, v0, Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;->economy:Lcom/evancharlton/mileage/views/FormattedNumberView;

    const/high16 v6, -0x270000

    invoke-virtual {v5, v6}, Lcom/evancharlton/mileage/views/FormattedNumberView;->setTextColor(I)V

    .line 151
    :cond_5
    :goto_0
    iget-object v5, v0, Lcom/evancharlton/mileage/adapters/FillupAdapter$Holder;->economy:Lcom/evancharlton/mileage/views/FormattedNumberView;

    invoke-virtual {v5, v1}, Lcom/evancharlton/mileage/views/FormattedNumberView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-object p2
.end method

.method public requery()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 79
    invoke-virtual {p0}, Lcom/evancharlton/mileage/adapters/FillupAdapter;->notifyDataSetChanged()V

    .line 80
    return-void
.end method

.method public setVehicle(Lcom/evancharlton/mileage/dao/Vehicle;)V
    .locals 8
    .param p1, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;

    .line 63
    iput-object p1, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    .line 64
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/evancharlton/mileage/adapters/FillupAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v4, "vehicle_id = ?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    .line 70
    invoke-virtual {v6}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "odometer DESC"

    .line 68
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mCursor:Landroid/database/Cursor;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/evancharlton/mileage/math/Calculator;->getVolumeUnitsAbbr(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mVolumeUnits:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/evancharlton/mileage/math/Calculator;->getEconomyUnitsAbbr(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter;->mEconomyUnits:Ljava/lang/String;

    .line 75
    return-void
.end method
