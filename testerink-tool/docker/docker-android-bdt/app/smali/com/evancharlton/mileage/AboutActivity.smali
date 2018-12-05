.class public Lcom/evancharlton/mileage/AboutActivity;
.super Landroid/app/Activity;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/high16 v1, 0x7f050000

    if-eq v0, v1, :cond_1

    const v1, 0x7f050003

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://market.android.com/details?id=com.stevealbright.clutch"

    .line 27
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 22
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://www.artfulbits.com/products/android/aicharts.aspx"

    .line 23
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 24
    nop

    .line 30
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const/high16 v0, 0x7f070000

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/AboutActivity;->setContentView(I)V

    .line 16
    return-void
.end method
