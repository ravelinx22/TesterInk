.class public Lcom/evancharlton/mileage/adapters/DateFormatAdapter;
.super Landroid/widget/BaseAdapter;
.source "DateFormatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/adapters/DateFormatAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final FORMATS:[Ljava/lang/String;

.field private static final FORMAT_STRINGS:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 12
    const/16 v0, 0x12

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "YYYY-MM-DD HH:MM:SS"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "YYYY-MM-DD HH:MM"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "YYYY-MM-DD"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "YYYY/MM/DD HH:MM:SS"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "YYYY/MM/DD HH:MM"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "YYYY/MM/DD"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "MM-DD-YYYY HH:MM:SS"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "MM-DD-YYYY HH:MM"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "MM-DD-YYYY"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "MM/DD/YYYY HH:MM:SS"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "MM/DD/YYYY HH:MM"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "MM/DD/YYYY"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "DD-MM-YYYY HH:MM:SS"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "DD-MM-YYYY HH:MM"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, "DD-MM-YYYY"

    const/16 v17, 0xe

    aput-object v2, v1, v17

    const-string v2, "DD/MM/YYYY HH:MM:SS"

    const/16 v17, 0xf

    aput-object v2, v1, v17

    const-string v2, "DD/MM/YYYY HH:MM"

    const/16 v17, 0x10

    aput-object v2, v1, v17

    const-string v2, "DD/MM/YYYY"

    const/16 v17, 0x11

    aput-object v2, v1, v17

    sput-object v1, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->FORMATS:[Ljava/lang/String;

    .line 33
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    aput-object v1, v0, v3

    const-string v1, "yyyy-MM-dd HH:mm"

    aput-object v1, v0, v4

    const-string v1, "yyyy-MM-dd"

    aput-object v1, v0, v5

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    aput-object v1, v0, v6

    const-string v1, "yyyy/MM/dd HH:mm"

    aput-object v1, v0, v7

    const-string v1, "yyyy/MM/dd"

    aput-object v1, v0, v8

    const-string v1, "MM-dd-yyyy HH:mm:ss"

    aput-object v1, v0, v9

    const-string v1, "MM-dd-yyyy HH:mm"

    aput-object v1, v0, v10

    const-string v1, "MM-dd-yyyy"

    aput-object v1, v0, v11

    const-string v1, "MM/dd/yyyy HH:mm:ss"

    aput-object v1, v0, v12

    const-string v1, "MM/dd/yyyy HH:mm"

    aput-object v1, v0, v13

    const-string v1, "MM/dd/yyyy"

    aput-object v1, v0, v14

    const-string v1, "dd-MM-yyyy HH:mm:ss"

    aput-object v1, v0, v15

    const-string v1, "dd-MM-yyyy HH:mm"

    aput-object v1, v0, v16

    const-string v1, "dd-MM-yyyy"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "dd/MM/yyyy HH:mm:ss"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "dd/MM/yyyy HH:mm"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "dd/MM/yyyy"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->FORMAT_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private getView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "resource"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .line 86
    if-nez p3, :cond_0

    .line 87
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 90
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/adapters/DateFormatAdapter$ViewHolder;

    .line 91
    .local v0, "holder":Lcom/evancharlton/mileage/adapters/DateFormatAdapter$ViewHolder;
    if-nez v0, :cond_1

    .line 92
    new-instance v1, Lcom/evancharlton/mileage/adapters/DateFormatAdapter$ViewHolder;

    invoke-direct {v1, p3}, Lcom/evancharlton/mileage/adapters/DateFormatAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    move-object v0, v1

    .line 95
    :cond_1
    iget-object v1, v0, Lcom/evancharlton/mileage/adapters/DateFormatAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    sget-object v2, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->FORMATS:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-object p3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 62
    sget-object v0, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->FORMATS:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 82
    const v0, 0x1090009

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->getView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 67
    sget-object v0, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->FORMAT_STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 72
    sget-object v0, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->FORMAT_STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 77
    const v0, 0x1090008

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;->getView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
