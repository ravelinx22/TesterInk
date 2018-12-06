.class public Lcom/evancharlton/mileage/dao/FillupSeries;
.super Ljava/util/ArrayList;
.source "FillupSeries.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/evancharlton/mileage/dao/Fillup;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x499d7413cbda82f6L


# instance fields
.field private mEconomyVolume:D

.field private mTotalCost:D


# direct methods
.method public varargs constructor <init>([Lcom/evancharlton/mileage/dao/Fillup;)V
    .locals 8
    .param p1, "fillups"    # [Lcom/evancharlton/mileage/dao/Fillup;

    .line 14
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mTotalCost:D

    .line 12
    iput-wide v0, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mEconomyVolume:D

    .line 15
    array-length v0, p1

    .line 16
    .local v0, "length":I
    const/4 v1, 0x0

    .line 17
    .local v1, "previous":Lcom/evancharlton/mileage/dao/Fillup;
    const/4 v2, 0x0

    .line 18
    .local v2, "current":Lcom/evancharlton/mileage/dao/Fillup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 19
    aget-object v2, p1, v3

    .line 20
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Fillup;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 21
    invoke-virtual {v1, v2}, Lcom/evancharlton/mileage/dao/Fillup;->setNext(Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 23
    :cond_0
    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->hasPrevious()Z

    move-result v4

    if-nez v4, :cond_1

    .line 24
    invoke-virtual {v2, v1}, Lcom/evancharlton/mileage/dao/Fillup;->setPrevious(Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 26
    :cond_1
    invoke-super {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    move-object v1, v2

    .line 29
    iget-wide v4, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mTotalCost:D

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mTotalCost:D

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public static load(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/evancharlton/mileage/dao/FillupSeries;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/evancharlton/mileage/dao/FillupSeries;>;"
    new-instance v1, Lcom/evancharlton/mileage/dao/FillupSeries;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/evancharlton/mileage/dao/Fillup;

    invoke-direct {v1, v3}, Lcom/evancharlton/mileage/dao/FillupSeries;-><init>([Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 116
    .local v1, "series":Lcom/evancharlton/mileage/dao/FillupSeries;
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    new-instance v3, Lcom/evancharlton/mileage/dao/Fillup;

    invoke-direct {v3, p0}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/database/Cursor;)V

    .line 118
    .local v3, "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->isRestart()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v4, Lcom/evancharlton/mileage/dao/FillupSeries;

    new-array v5, v2, [Lcom/evancharlton/mileage/dao/Fillup;

    invoke-direct {v4, v5}, Lcom/evancharlton/mileage/dao/FillupSeries;-><init>([Lcom/evancharlton/mileage/dao/Fillup;)V

    move-object v1, v4

    .line 122
    :cond_0
    invoke-virtual {v1, v3}, Lcom/evancharlton/mileage/dao/FillupSeries;->add(Lcom/evancharlton/mileage/dao/Fillup;)Z

    .line 123
    .end local v3    # "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    return-object v0
.end method


# virtual methods
.method public add(Lcom/evancharlton/mileage/dao/Fillup;)Z
    .locals 4
    .param p1, "fillup"    # Lcom/evancharlton/mileage/dao/Fillup;

    .line 35
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->last()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evancharlton/mileage/dao/Fillup;->setNext(Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 37
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->last()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evancharlton/mileage/dao/Fillup;->setPrevious(Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 39
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mTotalCost:D

    invoke-virtual {p1}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mTotalCost:D

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mEconomyVolume:D

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 8
    check-cast p1, Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/dao/FillupSeries;->add(Lcom/evancharlton/mileage/dao/Fillup;)Z

    move-result p1

    return p1
.end method

.method public first()Lcom/evancharlton/mileage/dao/Fillup;
    .locals 1

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/dao/FillupSeries;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/dao/Fillup;

    return-object v0
.end method

.method public getEconomyVolume()D
    .locals 6

    .line 78
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mEconomyVolume:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_3

    .line 79
    const-wide/16 v0, 0x0

    .line 80
    .local v0, "total":D
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evancharlton/mileage/dao/Fillup;

    .line 81
    .local v3, "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getPrevious()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v4

    if-nez v4, :cond_0

    .line 82
    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->validForEconomy()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getVolume()D

    move-result-wide v4

    add-double/2addr v0, v4

    .line 87
    .end local v3    # "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    :cond_1
    goto :goto_0

    .line 88
    :cond_2
    iput-wide v0, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mEconomyVolume:D

    .line 90
    .end local v0    # "total":D
    :cond_3
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mEconomyVolume:D

    return-wide v0
.end method

.method public getTimeRange()J
    .locals 4

    .line 68
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->last()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->first()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalCost()D
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/FillupSeries;->mTotalCost:D

    return-wide v0
.end method

.method public getTotalDistance()D
    .locals 6

    .line 47
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->last()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v0

    .line 51
    .local v0, "last":Lcom/evancharlton/mileage/dao/Fillup;
    :goto_0
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getPrevious()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->first()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v3

    .line 55
    .local v3, "first":Lcom/evancharlton/mileage/dao/Fillup;
    if-ne v0, v3, :cond_1

    .line 56
    return-wide v1

    .line 58
    :cond_1
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v1

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v4

    sub-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    return-wide v1

    .line 60
    .end local v0    # "last":Lcom/evancharlton/mileage/dao/Fillup;
    .end local v3    # "first":Lcom/evancharlton/mileage/dao/Fillup;
    :cond_2
    return-wide v1
.end method

.method public getTotalVolume()D
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->getEconomyVolume()D

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/dao/FillupSeries;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getVolume()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public last()Lcom/evancharlton/mileage/dao/Fillup;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupSeries;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/dao/FillupSeries;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/dao/Fillup;

    return-object v0
.end method
