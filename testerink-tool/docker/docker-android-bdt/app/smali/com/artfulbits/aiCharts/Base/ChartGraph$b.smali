.class final Lcom/artfulbits/aiCharts/Base/ChartGraph$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static final a:[S


# instance fields
.field private b:Ljava/nio/ByteBuffer;

.field private c:Ljava/nio/ByteBuffer;

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    const/16 v0, 0x24

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a:[S

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x4s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0x8s
        0xas
        0xbs
        0xcs
        0xds
        0xes
        0xcs
        0xes
        0xfs
        0x10s
        0x11s
        0x12s
        0x10s
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x14s
        0x16s
        0x17s
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->d:I

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->e:I

    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-ge v0, p1, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object p0, p1

    :cond_2
    :goto_1
    return-object p0
.end method


# virtual methods
.method public final a(FFFFFFFFI)I
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->e:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x24

    invoke-static {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p7}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p8}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    invoke-static {p9}, Landroid/graphics/Color;->red(I)I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    invoke-static {p9}, Landroid/graphics/Color;->green(I)I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    invoke-static {p9}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    invoke-static {p9}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->e:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->e:I

    return p1
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->d:I

    iput v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->e:I

    return-void
.end method

.method public final a(III)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->d:I

    add-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    int-to-short p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    int-to-short p2, p3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->d:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->d:I

    return-void
.end method

.method public final a(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->d:I

    add-int/lit8 v1, v1, 0x6

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    int-to-short p2, p2

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    int-to-short p3, p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    int-to-short p2, p4

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->d:I

    add-int/lit8 p1, p1, 0x6

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->d:I

    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    const/16 v2, 0x1406

    const/16 v3, 0x24

    const/4 v4, 0x3

    invoke-interface {p1, v4, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    const/16 v4, 0x18

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    const/4 v4, 0x2

    invoke-interface {p1, v4, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    const/16 v4, 0x1401

    invoke-interface {p1, v2, v4, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->d:I

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    const/16 v3, 0x1403

    invoke-interface {p1, v2, v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public final a([S)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    aget-short v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->d:I

    return-void
.end method

.method public final b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    const v0, 0x8075

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const v1, 0x8078

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const/16 v2, 0xb50

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    const/16 v5, 0x24

    const/4 v6, 0x3

    const/16 v7, 0x1406

    invoke-interface {p1, v6, v7, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->b:Ljava/nio/ByteBuffer;

    const/4 v6, 0x4

    const/16 v7, 0x1401

    invoke-interface {p1, v6, v7, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->d:I

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$b;->c:Ljava/nio/ByteBuffer;

    const/4 v5, 0x1

    const/16 v6, 0x1403

    invoke-interface {p1, v5, v3, v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    return-void
.end method
