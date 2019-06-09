.class public Lcom/oneplus/settings/packageuninstaller/ErrorFragment;
.super Landroid/support/v17/leanback/app/GuidedStepFragment;
.source "ErrorFragment.java"


# static fields
.field public static final TEXT:Ljava/lang/String; = "com.android.packageinstaller.arg.text"

.field public static final TITLE:Ljava/lang/String; = "com.android.packageinstaller.arg.title"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/support/v17/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/ErrorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, -0x4

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/GuidedAction$Builder;->clickAction(J)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedAction$Builder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction$Builder;->build()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreateGuidance(Landroid/os/Bundle;)Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;
    .locals 4

    new-instance v0, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/ErrorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.android.packageinstaller.arg.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/packageuninstaller/ErrorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/ErrorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.android.packageinstaller.arg.text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/packageuninstaller/ErrorFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public onGuidedActionClicked(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/ErrorFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/ErrorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/ErrorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->dispatchAborted()V

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/ErrorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/ErrorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onProvideTheme()I
    .locals 1

    const v0, 0x7f13042a

    return v0
.end method
