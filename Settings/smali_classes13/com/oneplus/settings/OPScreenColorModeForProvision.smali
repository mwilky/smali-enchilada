.class public Lcom/oneplus/settings/OPScreenColorModeForProvision;
.super Landroid/app/Activity;
.source "OPScreenColorModeForProvision.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPScreenColorModeForProvision;->finish()V

    const v0, 0x7f01003d

    const v1, 0x7f01003e

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/OPScreenColorModeForProvision;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d01b0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPScreenColorModeForProvision;->setContentView(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPScreenColorModeForProvision;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v0, 0x7f0a035c

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPScreenColorModeForProvision;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/oneplus/settings/OPScreenColorModeForProvision$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPScreenColorModeForProvision$1;-><init>(Lcom/oneplus/settings/OPScreenColorModeForProvision;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
