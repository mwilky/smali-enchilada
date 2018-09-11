.class public Lcom/oneplus/settings/OPScreenColorModeForProvision;
.super Landroid/app/Activity;
.source "OPScreenColorModeForProvision.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 39
    invoke-virtual {p0}, Lcom/oneplus/settings/OPScreenColorModeForProvision;->finish()V

    .line 40
    const v0, 0x7f01003d

    const v1, 0x7f01003e

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/OPScreenColorModeForProvision;->overridePendingTransition(II)V

    .line 41
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f0d01a2

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPScreenColorModeForProvision;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lcom/oneplus/settings/OPScreenColorModeForProvision;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 19
    const/16 v1, 0x2100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 21
    const v0, 0x7f0a0338

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPScreenColorModeForProvision;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 22
    .local v0, "next":Landroid/widget/Button;
    new-instance v1, Lcom/oneplus/settings/OPScreenColorModeForProvision$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPScreenColorModeForProvision$1;-><init>(Lcom/oneplus/settings/OPScreenColorModeForProvision;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method
