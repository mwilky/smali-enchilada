.class Landroid/support/v17/preference/LeanbackSettingsFragment$RootViewOnKeyListener;
.super Ljava/lang/Object;
.source "LeanbackSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/preference/LeanbackSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RootViewOnKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/preference/LeanbackSettingsFragment;


# direct methods
.method private constructor <init>(Landroid/support/v17/preference/LeanbackSettingsFragment;)V
    .locals 0

    .line 181
    iput-object p1, p0, Landroid/support/v17/preference/LeanbackSettingsFragment$RootViewOnKeyListener;->this$0:Landroid/support/v17/preference/LeanbackSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v17/preference/LeanbackSettingsFragment;Landroid/support/v17/preference/LeanbackSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v17/preference/LeanbackSettingsFragment;
    .param p2, "x1"    # Landroid/support/v17/preference/LeanbackSettingsFragment$1;

    .line 181
    invoke-direct {p0, p1}, Landroid/support/v17/preference/LeanbackSettingsFragment$RootViewOnKeyListener;-><init>(Landroid/support/v17/preference/LeanbackSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 185
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/support/v17/preference/LeanbackSettingsFragment$RootViewOnKeyListener;->this$0:Landroid/support/v17/preference/LeanbackSettingsFragment;

    invoke-virtual {v0}, Landroid/support/v17/preference/LeanbackSettingsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    return v0

    .line 188
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
