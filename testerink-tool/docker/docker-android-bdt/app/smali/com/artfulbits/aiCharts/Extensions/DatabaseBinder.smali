.class public Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/IItemBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/artfulbits/aiCharts/Base/IItemBinder<",
        "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final AXIS_LABEL_VALUE:I = 0x3

.field public static final LABEL_VALUE:I = 0x2

.field public static final X_VALUE:I = 0x0

.field public static final Y_VALUE:I = 0x1


# instance fields
.field private a:[I

.field private b:[I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_4

    iput-object p3, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->a:[I

    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->b:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->b:[I

    aget-object v3, p2, v1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    array-length p1, p3

    if-ge v0, p1, :cond_2

    aget p1, p3, v0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget p1, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->c:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->c:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->c:I

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fields should contains at least one Y_VALUE"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "columns and fields array should be the same size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bind(Ljava/lang/Object;Lcom/artfulbits/aiCharts/Base/ChartPoint;)Lcom/artfulbits/aiCharts/Base/ChartPoint;
    .locals 10

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->c:I

    new-array v2, v2, [D

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-wide v5, v0

    move-object v1, v3

    const/4 v0, 0x0

    :goto_0
    iget-object v7, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->a:[I

    array-length v7, v7

    if-ge v4, v7, :cond_0

    iget-object v7, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->a:[I

    aget v7, v7, v4

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v3, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->b:[I

    aget v3, v3, v4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->b:[I

    aget v1, v1, v4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    add-int/lit8 v7, v0, 0x1

    iget-object v8, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->b:[I

    aget v8, v8, v4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    aput-wide v8, v2, v0

    move v0, v7

    goto :goto_1

    :pswitch_3
    iget-object v5, p0, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->b:[I

    aget v5, v5, v4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-direct {p2, v5, v6, v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;-><init>(D[D)V

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->reset()V

    invoke-virtual {p2, v5, v6}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setX(D)V

    invoke-virtual {p2, v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setY([D)V

    :goto_2
    invoke-virtual {p2, v3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setAxisLabel(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setLabel(Ljava/lang/String;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic bind(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {p0, p1, p2}, Lcom/artfulbits/aiCharts/Extensions/DatabaseBinder;->bind(Ljava/lang/Object;Lcom/artfulbits/aiCharts/Base/ChartPoint;)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object p1

    return-object p1
.end method
