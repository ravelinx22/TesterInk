.class final Lcom/artfulbits/aiCharts/Base/ChartGraph$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final e:[F

.field private static final f:[F

.field private static final g:[F

.field private static final h:[F

.field private static final i:[F

.field private static final j:[F


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Ljavax/microedition/khronos/opengles/GL11;

.field d:Landroid/graphics/Canvas;

.field private k:Ljavax/microedition/khronos/egl/EGL10;

.field private l:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private m:Ljavax/microedition/khronos/egl/EGLContext;

.field private n:Ljavax/microedition/khronos/egl/EGLSurface;

.field private o:Ljavax/microedition/khronos/egl/EGLSurface;

.field private p:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->e:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->f:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->g:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->h:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->i:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->j:[F

    return-void

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->d:Landroid/graphics/Canvas;

    const/4 v1, 0x7

    new-array v4, v1, [I

    fill-array-data v4, :array_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    new-array v8, v2, [I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->p:Landroid/graphics/Rect;

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->a:Landroid/graphics/Bitmap;

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->b:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->d:Landroid/graphics/Canvas;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->d:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->p:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->p:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object p1

    check-cast p1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 p1, 0xa

    new-array p1, p1, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v6, 0xa

    move-object v5, p1

    move-object v7, v8

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    aget v3, v8, v1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v5, p1, v2

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    iput-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->m:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v5, p1, v2

    iget-object v6, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->a:Landroid/graphics/Bitmap;

    invoke-interface {v3, v4, v5, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->n:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v5, p1, v2

    iget-object v6, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->b:Landroid/graphics/Bitmap;

    invoke-interface {v3, v4, v5, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->o:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->n:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->n:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->n:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->m:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->m:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object p1

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->d()V

    return-void

    :array_0
    .array-data 4
        0x3021
        0x8
        0x3025
        0x10
        0x3033
        0x2
        0x3038
    .end array-data
.end method

.method private d()V
    .locals 7

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0xb57

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->e:[F

    const/16 v2, 0x1200

    const/16 v3, 0x4001

    const/4 v4, 0x0

    invoke-interface {v0, v3, v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLightfv(II[FI)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->f:[F

    const/16 v5, 0x1201

    invoke-interface {v0, v3, v5, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLightfv(II[FI)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->g:[F

    const/16 v6, 0x1203

    invoke-interface {v0, v3, v6, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLightfv(II[FI)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->h:[F

    const/16 v3, 0x4002

    invoke-interface {v0, v3, v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLightfv(II[FI)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->i:[F

    invoke-interface {v0, v3, v5, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLightfv(II[FI)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->j:[F

    invoke-interface {v0, v3, v6, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLightfv(II[FI)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x900

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glFrontFace(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0xbd0

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1101

    const/16 v2, 0xc50

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glHint(II)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v2, 0xc53

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glHint(II)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const v1, 0x8074

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const v1, 0x8075

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const v1, 0x8076

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0xb50

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->n:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->o:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->m:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 8

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->o:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->o:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v7, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->m:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->m:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v4}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v4

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v0, v2, v3, p1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const v0, 0x8076

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisableClientState(I)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/View3D;)V
    .locals 5

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->p:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->p:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-interface {v0, v1, v2, v3, p1}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/View3D;->b()[F

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/View3D;->a()[F

    move-result-object p2

    invoke-interface {p1, p2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->d()V

    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->n:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->n:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->m:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const v1, 0x8076

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0xb50

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    return-void
.end method

.method public final c()V
    .locals 7

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->o:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->o:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->m:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v2, 0x4d56

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->k:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->l:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->n:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->n:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->m:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartGraph$a;->c:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    return-void
.end method
