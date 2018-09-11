.class Landroid/support/v17/leanback/app/FragmentUtil;
.super Ljava/lang/Object;
.source "FragmentUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static getContext(Landroid/app/Fragment;)Landroid/content/Context;
    .locals 2
    .param p0, "fragment"    # Landroid/app/Fragment;

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
