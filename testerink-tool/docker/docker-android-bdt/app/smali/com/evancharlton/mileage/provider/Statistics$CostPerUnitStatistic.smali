.class public Lcom/evancharlton/mileage/provider/Statistics$CostPerUnitStatistic;
.super Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/provider/Statistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CostPerUnitStatistic"
.end annotation


# instance fields
.field private final mUnit:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "label"    # I
    .param p3, "unit"    # I

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;-><init>(Ljava/lang/String;Ljava/lang/Class;ILcom/evancharlton/mileage/provider/Statistics$1;)V

    .line 112
    iput p3, p0, Lcom/evancharlton/mileage/provider/Statistics$CostPerUnitStatistic;->mUnit:I

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/evancharlton/mileage/provider/Statistics$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/evancharlton/mileage/provider/Statistics$1;

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/evancharlton/mileage/provider/Statistics$CostPerUnitStatistic;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public format(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;D)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p3, "value"    # D

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;->format(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/evancharlton/mileage/provider/Statistics$CostPerUnitStatistic;->mUnit:I

    .line 118
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 117
    const v1, 0x7f08012e

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
