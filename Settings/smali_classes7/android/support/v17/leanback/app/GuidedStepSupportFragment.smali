.class public Landroid/support/v17/leanback/app/GuidedStepSupportFragment;
.super Landroid/support/v4/app/Fragment;
.source "GuidedStepSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/GuidedStepSupportFragment$DummyFragment;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ENTRY_NAME_ENTRANCE:Ljava/lang/String; = "GuidedStepEntrance"

.field private static final ENTRY_NAME_REPLACE:Ljava/lang/String; = "GuidedStepDefault"

.field private static final EXTRA_ACTION_PREFIX:Ljava/lang/String; = "action_"

.field private static final EXTRA_BUTTON_ACTION_PREFIX:Ljava/lang/String; = "buttonaction_"

.field public static final EXTRA_UI_STYLE:Ljava/lang/String; = "uiStyle"

.field private static final IS_FRAMEWORK_FRAGMENT:Z = false

.field public static final SLIDE_FROM_BOTTOM:I = 0x1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final SLIDE_FROM_SIDE:I = 0x0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "GuidedStepF"

.field private static final TAG_LEAN_BACK_ACTIONS_FRAGMENT:Ljava/lang/String; = "leanBackGuidedStepSupportFragment"

.field public static final UI_STYLE_ACTIVITY_ROOT:I = 0x2

.field public static final UI_STYLE_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UI_STYLE_ENTRANCE:I = 0x1

.field public static final UI_STYLE_REPLACE:I


# instance fields
.field private entranceTransitionType:I

.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field

.field mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

.field private mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

.field private mAdapterGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

.field private mButtonActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

.field private mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

.field private mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

.field private mSubAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

.field private mThemeWrapper:Landroid/view/ContextThemeWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActions:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->entranceTransitionType:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onCreateGuidanceStylist()Landroid/support/v17/leanback/widget/GuidanceStylist;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onCreateActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onCreateButtonActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onProvideFragmentTransitions()V

    return-void
.end method

.method public static add(Landroid/support/v4/app/FragmentManager;Landroid/support/v17/leanback/app/GuidedStepSupportFragment;)I
    .locals 1

    const v0, 0x1020002

    invoke-static {p0, p1, v0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->add(Landroid/support/v4/app/FragmentManager;Landroid/support/v17/leanback/app/GuidedStepSupportFragment;I)I

    move-result v0

    return v0
.end method

.method public static add(Landroid/support/v4/app/FragmentManager;Landroid/support/v17/leanback/app/GuidedStepSupportFragment;I)I
    .locals 5

    invoke-static {p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getCurrentGuidedStepSupportFragment(Landroid/support/v4/app/FragmentManager;)Landroid/support/v17/leanback/app/GuidedStepSupportFragment;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->setUiStyle(I)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->generateStackEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v4, v0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onAddSharedElementTransition(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v17/leanback/app/GuidedStepSupportFragment;)V

    :cond_2
    const-string v1, "leanBackGuidedStepSupportFragment"

    invoke-virtual {v4, p2, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v1

    return v1
.end method

.method public static addAsRoot(Landroid/support/v4/app/FragmentActivity;Landroid/support/v17/leanback/app/GuidedStepSupportFragment;I)I
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "leanBackGuidedStepSupportFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "GuidedStepF"

    const-string v2, "Fragment is already exists, likely calling addAsRoot() when savedInstanceState is not null in Activity.onCreate()."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->setUiStyle(I)V

    const-string v2, "leanBackGuidedStepSupportFragment"

    invoke-virtual {v1, p2, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v2

    return v2
.end method

.method private static addNonNullSharedElementTransition(Landroid/support/v4/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method static generateStackEntryName(ILjava/lang/Class;)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GuidedStepEntrance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GuidedStepDefault"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCurrentGuidedStepSupportFragment(Landroid/support/v4/app/FragmentManager;)Landroid/support/v17/leanback/app/GuidedStepSupportFragment;
    .locals 2

    const-string v0, "leanBackGuidedStepSupportFragment"

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFirstCheckedAction()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GuidedAction;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static getGuidedStepSupportFragmentClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "GuidedStepDefault"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GuidedStepDefault"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "GuidedStepEntrance"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GuidedStepEntrance"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method private static isGuidedStepTheme(Landroid/content/Context;)Z
    .locals 6

    sget v0, Landroid/support/v17/leanback/R$attr;->guidedStepThemeFlag:I

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v4, v1, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_0

    iget v4, v1, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method static isSaveEnabled(Landroid/support/v17/leanback/widget/GuidedAction;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->isAutoSaveRestoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isStackEntryUiStyleEntrance(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "GuidedStepEntrance"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resolveTheme()V
    .locals 7

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onProvideTheme()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    invoke-static {v0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->isGuidedStepTheme(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    sget v2, Landroid/support/v17/leanback/R$attr;->guidedStepTheme:I

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v5, v0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v5}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->isGuidedStepTheme(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput-object v5, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    iput-object v6, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    :cond_1
    :goto_0
    if-nez v4, :cond_2

    const-string v5, "GuidedStepF"

    const-string v6, "GuidedStepSupportFragment does not have an appropriate theme set."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    goto :goto_1

    :cond_3
    if-eq v1, v2, :cond_4

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public collapseAction(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->collapseAction(Z)V

    :cond_0
    return-void
.end method

.method public collapseSubActions()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->collapseAction(Z)V

    return-void
.end method

.method public expandAction(Landroid/support/v17/leanback/widget/GuidedAction;Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->expandAction(Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    return-void
.end method

.method public expandSubActions(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->expandAction(Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    return-void
.end method

.method public findActionById(J)Landroid/support/v17/leanback/widget/GuidedAction;
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->findActionPositionById(J)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedAction;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public findActionPositionById(J)I
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActions:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public findButtonActionById(J)Landroid/support/v17/leanback/widget/GuidedAction;
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->findButtonActionPositionById(J)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedAction;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public findButtonActionPositionById(J)I
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActions:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public finishGuidedStepSupportFragments()V
    .locals 7

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v3

    invoke-interface {v3}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->isStackEntryUiStyleEntrance(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getCurrentGuidedStepSupportFragment(Landroid/support/v4/app/FragmentManager;)Landroid/support/v17/leanback/app/GuidedStepSupportFragment;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->setUiStyle(I)V

    :cond_0
    invoke-interface {v3}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getId()I

    move-result v6

    invoke-virtual {v0, v6, v5}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(II)Z

    return-void

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    return-void
.end method

.method final generateStackEntryName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getUiStyle()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->generateStackEntryName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionItemView(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :goto_0
    return-object v1
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActions:Ljava/util/List;

    return-object v0
.end method

.method final getAutoRestoreKey(Landroid/support/v17/leanback/widget/GuidedAction;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getButtonActionItemView(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :goto_0
    return-object v1
.end method

.method public getButtonActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActions:Ljava/util/List;

    return-object v0
.end method

.method final getButtonAutoRestoreKey(Landroid/support/v17/leanback/widget/GuidedAction;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buttonaction_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGuidanceStylist()Landroid/support/v17/leanback/widget/GuidanceStylist;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

    return-object v0
.end method

.method public getGuidedActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    return-object v0
.end method

.method public getGuidedButtonActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    return-object v0
.end method

.method public getSelectedActionPosition()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedButtonActionPosition()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public getUiStyle()I
    .locals 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "uiStyle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public isExpanded()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isExpanded()Z

    move-result v0

    return v0
.end method

.method public isFocusOutEndAllowed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFocusOutStartAllowed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSubActionsExpanded()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isSubActionsExpanded()Z

    move-result v0

    return v0
.end method

.method public notifyActionChanged(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public notifyButtonActionChanged(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method protected onAddSharedElementTransition(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v17/leanback/app/GuidedStepSupportFragment;)V
    .locals 3

    invoke-virtual {p2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->action_fragment_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "action_fragment_root"

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->addNonNullSharedElementTransition(Landroid/support/v4/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    sget v1, Landroid/support/v17/leanback/R$id;->action_fragment_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "action_fragment_background"

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->addNonNullSharedElementTransition(Landroid/support/v4/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    sget v1, Landroid/support/v17/leanback/R$id;->action_fragment:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "action_fragment"

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->addNonNullSharedElementTransition(Landroid/support/v4/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    sget v1, Landroid/support/v17/leanback/R$id;->guidedactions_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "guidedactions_root"

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->addNonNullSharedElementTransition(Landroid/support/v4/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    sget v1, Landroid/support/v17/leanback/R$id;->guidedactions_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "guidedactions_content"

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->addNonNullSharedElementTransition(Landroid/support/v4/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    sget v1, Landroid/support/v17/leanback/R$id;->guidedactions_list_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "guidedactions_list_background"

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->addNonNullSharedElementTransition(Landroid/support/v4/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    sget v1, Landroid/support/v17/leanback/R$id;->guidedactions_root2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "guidedactions_root2"

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->addNonNullSharedElementTransition(Landroid/support/v4/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    sget v1, Landroid/support/v17/leanback/R$id;->guidedactions_content2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "guidedactions_content2"

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->addNonNullSharedElementTransition(Landroid/support/v4/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    sget v1, Landroid/support/v17/leanback/R$id;->guidedactions_list_background2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "guidedactions_list_background2"

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->addNonNullSharedElementTransition(Landroid/support/v4/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onProvideFragmentTransitions()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onCreateActions(Ljava/util/List;Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onRestoreActions(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->setActions(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1, p1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onCreateButtonActions(Ljava/util/List;Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1, p1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onRestoreButtonActions(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->setButtonActions(Ljava/util/List;)V

    return-void
.end method

.method public onCreateActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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

    return-void
.end method

.method public onCreateActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;-><init>()V

    return-object v0
.end method

.method public onCreateBackgroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_guidedstep_background:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateButtonActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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

    return-void
.end method

.method public onCreateButtonActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;-><init>()V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setAsButtonActions()V

    return-object v0
.end method

.method public onCreateGuidance(Landroid/os/Bundle;)Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public onCreateGuidanceStylist()Landroid/support/v17/leanback/widget/GuidanceStylist;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/GuidanceStylist;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/GuidanceStylist;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->resolveTheme()V

    invoke-direct/range {p0 .. p1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_guidedstep_fragment:I

    const/4 v9, 0x0

    move-object/from16 v10, p2

    invoke-virtual {v8, v0, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/support/v17/leanback/app/GuidedStepRootLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->isFocusOutStartAllowed()Z

    move-result v0

    invoke-virtual {v11, v0}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->setFocusOutStart(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->isFocusOutEndAllowed()Z

    move-result v0

    invoke-virtual {v11, v0}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->setFocusOutEnd(Z)V

    sget v0, Landroid/support/v17/leanback/R$id;->content_fragment:I

    invoke-virtual {v11, v0}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/ViewGroup;

    sget v0, Landroid/support/v17/leanback/R$id;->action_fragment:I

    invoke-virtual {v11, v0}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/view/ViewGroup;

    move-object v0, v13

    check-cast v0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->setFocusableViewAvailableFixEnabled(Z)V

    invoke-virtual {v6, v7}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onCreateGuidance(Landroid/os/Bundle;)Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;

    move-result-object v15

    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

    invoke-virtual {v0, v8, v12, v15}, Landroid/support/v17/leanback/widget/GuidanceStylist;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, v8, v13}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, v8, v13}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment$1;

    invoke-direct {v0, v6}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/GuidedStepSupportFragment;)V

    move-object v2, v0

    new-instance v1, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActions:Ljava/util/List;

    new-instance v9, Landroid/support/v17/leanback/app/GuidedStepSupportFragment$2;

    invoke-direct {v9, v6}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/GuidedStepSupportFragment;)V

    iget-object v14, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    const/16 v16, 0x0

    move-object/from16 v17, v0

    move-object v0, v1

    move-object/from16 v18, v1

    move-object/from16 v1, v17

    move-object/from16 v19, v2

    move-object v2, v9

    move-object v9, v3

    move-object v3, v6

    move-object/from16 v17, v4

    move-object v4, v14

    move-object v14, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;-><init>(Ljava/util/List;Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;Landroid/support/v17/leanback/widget/GuidedActionsStylist;Z)V

    move-object/from16 v0, v18

    iput-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    new-instance v5, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v1, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActions:Ljava/util/List;

    new-instance v2, Landroid/support/v17/leanback/app/GuidedStepSupportFragment$3;

    invoke-direct {v2, v6}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment$3;-><init>(Landroid/support/v17/leanback/app/GuidedStepSupportFragment;)V

    iget-object v4, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-object v0, v5

    move-object v10, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;-><init>(Ljava/util/List;Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;Landroid/support/v17/leanback/widget/GuidedActionsStylist;Z)V

    iput-object v10, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    new-instance v10, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    new-instance v2, Landroid/support/v17/leanback/app/GuidedStepSupportFragment$4;

    invoke-direct {v2, v6}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment$4;-><init>(Landroid/support/v17/leanback/app/GuidedStepSupportFragment;)V

    iget-object v4, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;-><init>(Ljava/util/List;Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;Landroid/support/v17/leanback/widget/GuidedActionsStylist;Z)V

    iput-object v10, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mSubAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;-><init>()V

    iput-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mAdapterGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mAdapterGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    iget-object v1, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v2, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->addAdpter(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V

    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mAdapterGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    iget-object v1, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mSubAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->addAdpter(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V

    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mAdapterGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->setEditListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;)V

    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;)V

    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v2, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getSubActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getSubActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v2, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mSubAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v2, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    nop

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_2

    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$attr;->guidedActionContentWidthWeightTwoPanels:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Landroid/support/v17/leanback/R$id;->action_fragment_root:I

    invoke-virtual {v11, v3}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    nop

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    invoke-virtual {v6, v8, v11, v7}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onCreateBackgroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    sget v2, Landroid/support/v17/leanback/R$id;->guidedstep_background_view_root:I

    invoke-virtual {v11, v2}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_4
    return-object v11
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidanceStylist;->onDestroyView()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onDestroyView()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mSubAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mAdapterGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onGuidedActionClicked(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 0

    return-void
.end method

.method public onGuidedActionEditCanceled(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onGuidedActionEdited(Landroid/support/v17/leanback/widget/GuidedAction;)V

    return-void
.end method

.method public onGuidedActionEdited(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onGuidedActionEditedAndProceed(Landroid/support/v17/leanback/widget/GuidedAction;)J
    .locals 2

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onGuidedActionEdited(Landroid/support/v17/leanback/widget/GuidedAction;)V

    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public onGuidedActionFocused(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 0

    return-void
.end method

.method protected onProvideFragmentTransitions()V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getUiStyle()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const v4, 0x800005

    invoke-static {v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$id;->guidedstep_background:I

    invoke-static {v4, v5, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->exclude(Ljava/lang/Object;IZ)V

    sget v5, Landroid/support/v17/leanback/R$id;->guidedactions_sub_list_background:I

    invoke-static {v4, v5, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->exclude(Ljava/lang/Object;IZ)V

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->setEnterTransition(Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeTransition(I)Ljava/lang/Object;

    move-result-object v1

    sget v5, Landroid/support/v17/leanback/R$id;->guidedactions_sub_list_background:I

    invoke-static {v1, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;I)V

    invoke-static {v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->createChangeBounds(Z)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->setSharedElementEnterTransition(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    iget v5, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->entranceTransitionType:I

    if-nez v5, :cond_1

    invoke-static {v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeTransition(I)Ljava/lang/Object;

    move-result-object v1

    sget v5, Landroid/support/v17/leanback/R$id;->guidedstep_background:I

    invoke-static {v1, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;I)V

    const v5, 0x800007

    invoke-static {v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object v5

    sget v6, Landroid/support/v17/leanback/R$id;->content_fragment:I

    invoke-static {v5, v6}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;I)V

    sget v6, Landroid/support/v17/leanback/R$id;->action_fragment_root:I

    invoke-static {v5, v6}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;I)V

    invoke-static {v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->setEnterTransition(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x50

    invoke-static {v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object v1

    sget v5, Landroid/support/v17/leanback/R$id;->guidedstep_background_view_root:I

    invoke-static {v1, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;I)V

    invoke-static {v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->setEnterTransition(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->setSharedElementEnterTransition(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->setEnterTransition(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->setSharedElementEnterTransition(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    const v1, 0x800003

    invoke-static {v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->guidedstep_background:I

    invoke-static {v1, v2, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->exclude(Ljava/lang/Object;IZ)V

    sget v2, Landroid/support/v17/leanback/R$id;->guidedactions_sub_list_background:I

    invoke-static {v1, v2, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->exclude(Ljava/lang/Object;IZ)V

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->setExitTransition(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public onProvideTheme()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method final onRestoreActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
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

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-static {v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->isSaveEnabled(Landroid/support/v17/leanback/widget/GuidedAction;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getAutoRestoreKey(Landroid/support/v17/leanback/widget/GuidedAction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/support/v17/leanback/widget/GuidedAction;->onRestoreInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final onRestoreButtonActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
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

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-static {v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->isSaveEnabled(Landroid/support/v17/leanback/widget/GuidedAction;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getButtonAutoRestoreKey(Landroid/support/v17/leanback/widget/GuidedAction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/support/v17/leanback/widget/GuidedAction;->onRestoreInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->action_fragment:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method final onSaveActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
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

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-static {v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->isSaveEnabled(Landroid/support/v17/leanback/widget/GuidedAction;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getAutoRestoreKey(Landroid/support/v17/leanback/widget/GuidedAction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/support/v17/leanback/widget/GuidedAction;->onSaveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final onSaveButtonActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
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

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-static {v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->isSaveEnabled(Landroid/support/v17/leanback/widget/GuidedAction;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getButtonAutoRestoreKey(Landroid/support/v17/leanback/widget/GuidedAction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/support/v17/leanback/widget/GuidedAction;->onSaveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActions:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onSaveActions(Ljava/util/List;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActions:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onSaveButtonActions(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSubGuidedActionClicked(Landroid/support/v17/leanback/widget/GuidedAction;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openInEditMode(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->openInEditMode(Landroid/support/v17/leanback/widget/GuidedAction;)V

    return-void
.end method

.method public popBackStackToGuidedStepSupportFragment(Ljava/lang/Class;I)V
    .locals 7

    const-class v0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v4

    invoke-interface {v4}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getGuidedStepSupportFragmentClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getId()I

    move-result v6

    invoke-virtual {v0, v6, p2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(II)Z

    return-void

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method runImeAnimations(Z)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/GuidanceStylist;->onImeAppearing(Ljava/util/List;)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onImeAppearing(Ljava/util/List;)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onImeAppearing(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/GuidanceStylist;->onImeDisappearing(Ljava/util/List;)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onImeDisappearing(Ljava/util/List;)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onImeDisappearing(Ljava/util/List;)V

    :goto_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public setActions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActions:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActions:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setActionsDiffCallback(Landroid/support/v17/leanback/widget/DiffCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v17/leanback/widget/DiffCallback<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setDiffCallback(Landroid/support/v17/leanback/widget/DiffCallback;)V

    return-void
.end method

.method public setButtonActions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActions:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActions:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setEntranceTransitionType(I)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput p1, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->entranceTransitionType:I

    return-void
.end method

.method public setSelectedActionPosition(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    return-void
.end method

.method public setSelectedButtonActionPosition(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    return-void
.end method

.method public setUiStyle(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getUiStyle()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v1, v3

    const/4 v2, 0x1

    :cond_0
    const-string v3, "uiStyle"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->setArguments(Landroid/os/Bundle;)V

    :cond_1
    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepSupportFragment;->onProvideFragmentTransitions()V

    :cond_2
    return-void
.end method
