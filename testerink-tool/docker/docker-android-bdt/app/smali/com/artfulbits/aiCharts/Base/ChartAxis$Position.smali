.class public final enum Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Bottom:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

.field public static final enum HorizontalCenter:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

.field public static final enum Left:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

.field public static final enum Right:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

.field public static final enum Top:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

.field public static final enum VerticalCenter:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

.field public static final enum ZAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

.field private static final synthetic a:[Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;


# instance fields
.field protected final IsOpposed:Z

.field protected final IsVertical:Z

.field protected final IsZAxis:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    const-string v1, "Left"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v6, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->Left:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    const-string v8, "Top"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->Top:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    const-string v2, "HorizontalCenter"

    const/4 v3, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->HorizontalCenter:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    const-string v8, "VerticalCenter"

    const/4 v9, 0x3

    const/4 v11, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->VerticalCenter:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    const-string v2, "Right"

    const/4 v3, 0x4

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->Right:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    const-string v8, "Bottom"

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->Bottom:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    const-string v2, "ZAxis"

    const/4 v3, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->ZAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->Left:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->Top:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->HorizontalCenter:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->VerticalCenter:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->Right:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->Bottom:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->ZAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->a:[Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsOpposed:Z

    iput-boolean p4, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsVertical:Z

    iput-boolean p5, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->IsZAxis:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;
    .locals 1

    const-class v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    return-object p0
.end method

.method public static values()[Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->a:[Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    invoke-virtual {v0}, [Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;

    return-object v0
.end method
