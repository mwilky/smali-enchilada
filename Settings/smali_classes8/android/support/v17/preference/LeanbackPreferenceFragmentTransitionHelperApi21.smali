.class public Landroid/support/v17/preference/LeanbackPreferenceFragmentTransitionHelperApi21;
.super Ljava/lang/Object;
.source "LeanbackPreferenceFragmentTransitionHelperApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static addTransitions(Landroid/app/Fragment;)V
    .locals 3
    .param p0, "f"    # Landroid/app/Fragment;

    .line 37
    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;

    const v1, 0x800003

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;-><init>(I)V

    .line 38
    .local v0, "transitionStartEdge":Landroid/transition/Transition;
    new-instance v1, Landroid/support/v17/leanback/transition/FadeAndShortSlide;

    const v2, 0x800005

    invoke-direct {v1, v2}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;-><init>(I)V

    .line 40
    .local v1, "transitionEndEdge":Landroid/transition/Transition;
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setEnterTransition(Landroid/transition/Transition;)V

    .line 41
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setExitTransition(Landroid/transition/Transition;)V

    .line 42
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setReenterTransition(Landroid/transition/Transition;)V

    .line 43
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setReturnTransition(Landroid/transition/Transition;)V

    .line 44
    return-void
.end method
