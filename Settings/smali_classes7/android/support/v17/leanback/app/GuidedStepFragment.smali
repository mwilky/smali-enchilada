.class public Landroid/support/v17/leanback/app/GuidedStepFragment;
.super Landroid/app/Fragment;
.source "GuidedStepFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/GuidedStepFragment$DummyFragment;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ENTRY_NAME_ENTRANCE:Ljava/lang/String; = "GuidedStepEntrance"

.field private static final ENTRY_NAME_REPLACE:Ljava/lang/String; = "GuidedStepDefault"

.field private static final EXTRA_ACTION_PREFIX:Ljava/lang/String; = "action_"

.field private static final EXTRA_BUTTON_ACTION_PREFIX:Ljava/lang/String; = "buttonaction_"

.field public static final EXTRA_UI_STYLE:Ljava/lang/String; = "uiStyle"

.field private static final IS_FRAMEWORK_FRAGMENT:Z = true

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

.field private static final TAG_LEAN_BACK_ACTIONS_FRAGMENT:Ljava/lang/String; = "leanBackGuidedStepFragment"

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

    .line 273
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->entranceTransitionType:I

    .line 274
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onCreateGuidanceStylist()Landroid/support/v17/leanback/widget/GuidanceStylist;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

    .line 275
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onCreateActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    .line 276
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onCreateButtonActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    .line 277
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onProvideFragmentTransitions()V

    .line 278
    return-void
.end method

.method public static add(Landroid/app/FragmentManager;Landroid/support/v17/leanback/app/GuidedStepFragment;)I
    .locals 1
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "fragment"    # Landroid/support/v17/leanback/app/GuidedStepFragment;

    .line 484
    const v0, 0x1020002

    invoke-static {p0, p1, v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->add(Landroid/app/FragmentManager;Landroid/support/v17/leanback/app/GuidedStepFragment;I)I

    move-result v0

    return v0
.end method

.method public static add(Landroid/app/FragmentManager;Landroid/support/v17/leanback/app/GuidedStepFragment;I)I
    .locals 7
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "fragment"    # Landroid/support/v17/leanback/app/GuidedStepFragment;
    .param p2, "id"    # I

    .line 505
    invoke-static {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getCurrentGuidedStepFragment(Landroid/app/FragmentManager;)Landroid/support/v17/leanback/app/GuidedStepFragment;

    move-result-object v0

    .line 506
    .local v0, "current":Landroid/support/v17/leanback/app/GuidedStepFragment;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 507
    .local v3, "inGuidedStep":Z
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_1

    if-nez v3, :cond_1

    .line 510
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    new-instance v5, Landroid/support/v17/leanback/app/GuidedStepFragment$DummyFragment;

    invoke-direct {v5}, Landroid/support/v17/leanback/app/GuidedStepFragment$DummyFragment;-><init>()V

    const-string v6, "leanBackGuidedStepFragment"

    .line 511
    invoke-virtual {v4, p2, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 512
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 514
    :cond_1
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 516
    .local v4, "ft":Landroid/app/FragmentTransaction;
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->setUiStyle(I)V

    .line 517
    invoke-virtual {p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->generateStackEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 518
    if-eqz v0, :cond_3

    .line 519
    invoke-virtual {p1, v4, v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onAddSharedElementTransition(Landroid/app/FragmentTransaction;Landroid/support/v17/leanback/app/GuidedStepFragment;)V

    .line 521
    :cond_3
    const-string v1, "leanBackGuidedStepFragment"

    invoke-virtual {v4, p2, p1, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    move-result v1

    return v1
.end method

.method public static addAsRoot(Landroid/app/Activity;Landroid/support/v17/leanback/app/GuidedStepFragment;I)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fragment"    # Landroid/support/v17/leanback/app/GuidedStepFragment;
    .param p2, "id"    # I

    .line 643
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 644
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 645
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    const-string v1, "leanBackGuidedStepFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 646
    const-string v1, "GuidedStepF"

    const-string v2, "Fragment is already exists, likely calling addAsRoot() when savedInstanceState is not null in Activity.onCreate()."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v1, -0x1

    return v1

    .line 650
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 651
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->setUiStyle(I)V

    .line 652
    const-string v2, "leanBackGuidedStepFragment"

    invoke-virtual {v1, p2, p1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    move-result v2

    return v2
.end method

.method private static addNonNullSharedElementTransition(Landroid/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p0, "ft"    # Landroid/app/FragmentTransaction;
    .param p1, "subView"    # Landroid/view/View;
    .param p2, "transitionName"    # Ljava/lang/String;

    .line 563
    if-eqz p1, :cond_0

    .line 564
    invoke-static {p0, p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelper;->addSharedElement(Landroid/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    .line 565
    :cond_0
    return-void
.end method

.method static generateStackEntryName(ILjava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "uiStyle"    # I
    .param p1, "guidedStepFragmentClass"    # Ljava/lang/Class;

    .line 586
    packed-switch p0, :pswitch_data_0

    .line 593
    const-string v0, ""

    return-object v0

    .line 590
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

    .line 588
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

.method public static getCurrentGuidedStepFragment(Landroid/app/FragmentManager;)Landroid/support/v17/leanback/app/GuidedStepFragment;
    .locals 2
    .param p0, "fm"    # Landroid/app/FragmentManager;

    .line 660
    const-string v0, "leanBackGuidedStepFragment"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 661
    .local v0, "f":Landroid/app/Fragment;
    instance-of v1, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;

    if-eqz v1, :cond_0

    .line 662
    move-object v1, v0

    check-cast v1, Landroid/support/v17/leanback/app/GuidedStepFragment;

    return-object v1

    .line 664
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFirstCheckedAction()I
    .locals 3

    .line 1398
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1399
    iget-object v2, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GuidedAction;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1400
    return v0

    .line 1398
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1403
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static getGuidedStepFragmentClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "backStackEntryName"    # Ljava/lang/String;

    .line 616
    const-string v0, "GuidedStepDefault"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    const-string v0, "GuidedStepDefault"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 618
    :cond_0
    const-string v0, "GuidedStepEntrance"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    const-string v0, "GuidedStepEntrance"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 621
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 1390
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    if-nez v0, :cond_0

    .line 1391
    return-object p1

    .line 1393
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method private static isGuidedStepTheme(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 1254
    sget v0, Landroid/support/v17/leanback/R$attr;->guidedStepThemeFlag:I

    .line 1255
    .local v0, "resId":I
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1256
    .local v1, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    .line 1258
    .local v2, "found":Z
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
    .param p0, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 1204
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
    .param p0, "backStackEntryName"    # Ljava/lang/String;

    .line 607
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

    .line 1362
    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    .line 1363
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onProvideTheme()I

    move-result v1

    .line 1364
    .local v1, "theme":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    invoke-static {v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->isGuidedStepTheme(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1367
    sget v2, Landroid/support/v17/leanback/R$attr;->guidedStepTheme:I

    .line 1368
    .local v2, "resId":I
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1369
    .local v3, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    .line 1371
    .local v4, "found":Z
    if-eqz v4, :cond_1

    .line 1372
    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v5, v0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1374
    .local v5, "themeWrapper":Landroid/view/ContextThemeWrapper;
    invoke-static {v5}, Landroid/support/v17/leanback/app/GuidedStepFragment;->isGuidedStepTheme(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1375
    iput-object v5, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    goto :goto_0

    .line 1377
    :cond_0
    const/4 v4, 0x0

    .line 1378
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    .line 1381
    .end local v5    # "themeWrapper":Landroid/view/ContextThemeWrapper;
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    .line 1382
    const-string v5, "GuidedStepF"

    const-string v6, "GuidedStepFragment does not have an appropriate theme set."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    .end local v2    # "resId":I
    .end local v3    # "typedValue":Landroid/util/TypedValue;
    .end local v4    # "found":Z
    :cond_2
    goto :goto_1

    :cond_3
    if-eq v1, v2, :cond_4

    .line 1385
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    .line 1387
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public collapseAction(Z)V
    .locals 1
    .param p1, "withTransition"    # Z

    .line 423
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->collapseAction(Z)V

    .line 426
    :cond_0
    return-void
.end method

.method public collapseSubActions()V
    .locals 1

    .line 413
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->collapseAction(Z)V

    .line 414
    return-void
.end method

.method public expandAction(Landroid/support/v17/leanback/widget/GuidedAction;Z)V
    .locals 1
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;
    .param p2, "withTransition"    # Z

    .line 405
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->expandAction(Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    .line 406
    return-void
.end method

.method public expandSubActions(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 1
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 390
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->expandAction(Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    .line 394
    return-void
.end method

.method public findActionById(J)Landroid/support/v17/leanback/widget/GuidedAction;
    .locals 2
    .param p1, "id"    # J

    .line 790
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->findActionPositionById(J)I

    move-result v0

    .line 791
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

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
    .param p1, "id"    # J

    .line 800
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 801
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 802
    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 803
    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 804
    return v0

    .line 801
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 808
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public findButtonActionById(J)Landroid/support/v17/leanback/widget/GuidedAction;
    .locals 2
    .param p1, "id"    # J

    .line 697
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->findButtonActionPositionById(J)I

    move-result v0

    .line 698
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

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
    .param p1, "id"    # J

    .line 707
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 708
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 709
    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 710
    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 711
    return v0

    .line 708
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 715
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public finishGuidedStepFragments()V
    .locals 7

    .line 1269
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1270
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 1271
    .local v1, "entryCount":I
    if-lez v1, :cond_2

    .line 1272
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1273
    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v3

    .line 1274
    .local v3, "entry":Landroid/app/FragmentManager$BackStackEntry;
    invoke-interface {v3}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v17/leanback/app/GuidedStepFragment;->isStackEntryUiStyleEntrance(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1275
    invoke-static {v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getCurrentGuidedStepFragment(Landroid/app/FragmentManager;)Landroid/support/v17/leanback/app/GuidedStepFragment;

    move-result-object v4

    .line 1276
    .local v4, "top":Landroid/support/v17/leanback/app/GuidedStepFragment;
    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 1277
    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/app/GuidedStepFragment;->setUiStyle(I)V

    .line 1279
    :cond_0
    invoke-interface {v3}, Landroid/app/FragmentManager$BackStackEntry;->getId()I

    move-result v6

    invoke-virtual {v0, v6, v5}, Landroid/app/FragmentManager;->popBackStackImmediate(II)Z

    .line 1281
    return-void

    .line 1272
    .end local v3    # "entry":Landroid/app/FragmentManager$BackStackEntry;
    .end local v4    # "top":Landroid/support/v17/leanback/app/GuidedStepFragment;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1285
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    .line 1286
    return-void
.end method

.method final generateStackEntryName()Ljava/lang/String;
    .locals 2

    .line 575
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getUiStyle()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->generateStackEntryName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionItemView(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .line 854
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 855
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 856
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
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

    .line 781
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    return-object v0
.end method

.method final getAutoRestoreKey(Landroid/support/v17/leanback/widget/GuidedAction;)Ljava/lang/String;
    .locals 3
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 1191
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
    .param p1, "position"    # I

    .line 755
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 756
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 757
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
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

    .line 688
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    return-object v0
.end method

.method final getButtonAutoRestoreKey(Landroid/support/v17/leanback/widget/GuidedAction;)Ljava/lang/String;
    .locals 3
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 1200
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

    .line 672
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

    return-object v0
.end method

.method public getGuidedActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;
    .locals 1

    .line 680
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    return-object v0
.end method

.method public getGuidedButtonActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;
    .locals 1

    .line 723
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    return-object v0
.end method

.method public getSelectedActionPosition()I
    .locals 1

    .line 872
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedButtonActionPosition()I
    .locals 1

    .line 773
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public getUiStyle()I
    .locals 3

    .line 1007
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1008
    .local v0, "b":Landroid/os/Bundle;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1009
    :cond_0
    const-string v2, "uiStyle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public isExpanded()Z
    .locals 1

    .line 374
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isExpanded()Z

    move-result v0

    return v0
.end method

.method public isFocusOutEndAllowed()Z
    .locals 1

    .line 1329
    const/4 v0, 0x0

    return v0
.end method

.method public isFocusOutStartAllowed()Z
    .locals 1

    .line 1319
    const/4 v0, 0x0

    return v0
.end method

.method public isSubActionsExpanded()Z
    .locals 1

    .line 381
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isSubActionsExpanded()Z

    move-result v0

    return v0
.end method

.method public notifyActionChanged(I)V
    .locals 1
    .param p1, "position"    # I

    .line 841
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->notifyItemChanged(I)V

    .line 844
    :cond_0
    return-void
.end method

.method public notifyButtonActionChanged(I)V
    .locals 1
    .param p1, "position"    # I

    .line 742
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->notifyItemChanged(I)V

    .line 745
    :cond_0
    return-void
.end method

.method protected onAddSharedElementTransition(Landroid/app/FragmentTransaction;Landroid/support/v17/leanback/app/GuidedStepFragment;)V
    .locals 3
    .param p1, "ft"    # Landroid/app/FragmentTransaction;
    .param p2, "disappearing"    # Landroid/support/v17/leanback/app/GuidedStepFragment;

    .line 539
    invoke-virtual {p2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 540
    .local v0, "fragmentView":Landroid/view/View;
    sget v1, Landroid/support/v17/leanback/R$id;->action_fragment_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "action_fragment_root"

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->addNonNullSharedElementTransition(Landroid/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    .line 542
    sget v1, Landroid/support/v17/leanback/R$id;->action_fragment_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "action_fragment_background"

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->addNonNullSharedElementTransition(Landroid/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    .line 544
    sget v1, Landroid/support/v17/leanback/R$id;->action_fragment:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "action_fragment"

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->addNonNullSharedElementTransition(Landroid/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    .line 546
    sget v1, Landroid/support/v17/leanback/R$id;->guidedactions_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "guidedactions_root"

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->addNonNullSharedElementTransition(Landroid/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    .line 548
    sget v1, Landroid/support/v17/leanback/R$id;->guidedactions_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "guidedactions_content"

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->addNonNullSharedElementTransition(Landroid/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    .line 550
    sget v1, Landroid/support/v17/leanback/R$id;->guidedactions_list_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "guidedactions_list_background"

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->addNonNullSharedElementTransition(Landroid/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    .line 552
    sget v1, Landroid/support/v17/leanback/R$id;->guidedactions_root2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "guidedactions_root2"

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->addNonNullSharedElementTransition(Landroid/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    .line 554
    sget v1, Landroid/support/v17/leanback/R$id;->guidedactions_content2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "guidedactions_content2"

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->addNonNullSharedElementTransition(Landroid/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    .line 556
    sget v1, Landroid/support/v17/leanback/R$id;->guidedactions_list_background2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "guidedactions_list_background2"

    invoke-static {p1, v1, v2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->addNonNullSharedElementTransition(Landroid/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1017
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1020
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onProvideFragmentTransitions()V

    .line 1022
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onCreateActions(Ljava/util/List;Landroid/os/Bundle;)V

    .line 1024
    if-eqz p1, :cond_0

    .line 1025
    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onRestoreActions(Ljava/util/List;Landroid/os/Bundle;)V

    .line 1027
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->setActions(Ljava/util/List;)V

    .line 1028
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    .local v1, "buttonActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    invoke-virtual {p0, v1, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onCreateButtonActions(Ljava/util/List;Landroid/os/Bundle;)V

    .line 1030
    if-eqz p1, :cond_1

    .line 1031
    invoke-virtual {p0, v1, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onRestoreButtonActions(Ljava/util/List;Landroid/os/Bundle;)V

    .line 1033
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->setButtonActions(Ljava/util/List;)V

    .line 1034
    return-void
.end method

.method public onCreateActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
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

    .line 338
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    return-void
.end method

.method public onCreateActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;
    .locals 1

    .line 295
    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;-><init>()V

    return-object v0
.end method

.method public onCreateBackgroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 964
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
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
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

    .line 348
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    return-void
.end method

.method public onCreateButtonActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;
    .locals 1

    .line 304
    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;-><init>()V

    .line 305
    .local v0, "stylist":Landroid/support/v17/leanback/widget/GuidedActionsStylist;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setAsButtonActions()V

    .line 306
    return-object v0
.end method

.method public onCreateGuidance(Landroid/os/Bundle;)Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 328
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

    .line 286
    new-instance v0, Landroid/support/v17/leanback/widget/GuidanceStylist;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/GuidanceStylist;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 21
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v6, p0

    .line 1059
    move-object/from16 v7, p3

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->resolveTheme()V

    .line 1060
    invoke-direct/range {p0 .. p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 1062
    .end local p1    # "inflater":Landroid/view/LayoutInflater;
    .local v8, "inflater":Landroid/view/LayoutInflater;
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_guidedstep_fragment:I

    const/4 v9, 0x0

    move-object/from16 v10, p2

    invoke-virtual {v8, v0, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/support/v17/leanback/app/GuidedStepRootLayout;

    .line 1065
    .local v11, "root":Landroid/support/v17/leanback/app/GuidedStepRootLayout;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->isFocusOutStartAllowed()Z

    move-result v0

    invoke-virtual {v11, v0}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->setFocusOutStart(Z)V

    .line 1066
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->isFocusOutEndAllowed()Z

    move-result v0

    invoke-virtual {v11, v0}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->setFocusOutEnd(Z)V

    .line 1068
    sget v0, Landroid/support/v17/leanback/R$id;->content_fragment:I

    invoke-virtual {v11, v0}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/ViewGroup;

    .line 1069
    .local v12, "guidanceContainer":Landroid/view/ViewGroup;
    sget v0, Landroid/support/v17/leanback/R$id;->action_fragment:I

    invoke-virtual {v11, v0}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/view/ViewGroup;

    .line 1070
    .local v13, "actionContainer":Landroid/view/ViewGroup;
    move-object v0, v13

    check-cast v0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->setFocusableViewAvailableFixEnabled(Z)V

    .line 1072
    invoke-virtual {v6, v7}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onCreateGuidance(Landroid/os/Bundle;)Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;

    move-result-object v15

    .line 1073
    .local v15, "guidance":Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;
    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

    invoke-virtual {v0, v8, v12, v15}, Landroid/support/v17/leanback/widget/GuidanceStylist;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;)Landroid/view/View;

    move-result-object v5

    .line 1074
    .local v5, "guidanceView":Landroid/view/View;
    invoke-virtual {v12, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1076
    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, v8, v13}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1077
    .local v4, "actionsView":Landroid/view/View;
    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1079
    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, v8, v13}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1080
    .local v3, "buttonActionsView":Landroid/view/View;
    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1082
    new-instance v0, Landroid/support/v17/leanback/app/GuidedStepFragment$1;

    invoke-direct {v0, v6}, Landroid/support/v17/leanback/app/GuidedStepFragment$1;-><init>(Landroid/support/v17/leanback/app/GuidedStepFragment;)V

    move-object v2, v0

    .line 1105
    .local v2, "editListener":Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;
    new-instance v1, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    new-instance v9, Landroid/support/v17/leanback/app/GuidedStepFragment$2;

    invoke-direct {v9, v6}, Landroid/support/v17/leanback/app/GuidedStepFragment$2;-><init>(Landroid/support/v17/leanback/app/GuidedStepFragment;)V

    iget-object v14, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    const/16 v16, 0x0

    move-object/from16 v17, v0

    move-object v0, v1

    move-object/from16 v18, v1

    move-object/from16 v1, v17

    move-object/from16 v19, v2

    move-object v2, v9

    .end local v2    # "editListener":Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;
    .local v19, "editListener":Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;
    move-object v9, v3

    move-object v3, v6

    .end local v3    # "buttonActionsView":Landroid/view/View;
    .local v9, "buttonActionsView":Landroid/view/View;
    move-object/from16 v17, v4

    move-object v4, v14

    .end local v4    # "actionsView":Landroid/view/View;
    .local v17, "actionsView":Landroid/view/View;
    move-object v14, v5

    move/from16 v5, v16

    .end local v5    # "guidanceView":Landroid/view/View;
    .local v14, "guidanceView":Landroid/view/View;
    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;-><init>(Ljava/util/List;Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;Landroid/support/v17/leanback/widget/GuidedActionsStylist;Z)V

    move-object/from16 v0, v18

    iput-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    .line 1116
    new-instance v5, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v1, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    new-instance v2, Landroid/support/v17/leanback/app/GuidedStepFragment$3;

    invoke-direct {v2, v6}, Landroid/support/v17/leanback/app/GuidedStepFragment$3;-><init>(Landroid/support/v17/leanback/app/GuidedStepFragment;)V

    iget-object v4, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-object v0, v5

    move-object v10, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;-><init>(Ljava/util/List;Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;Landroid/support/v17/leanback/widget/GuidedActionsStylist;Z)V

    iput-object v10, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    .line 1123
    new-instance v10, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    new-instance v2, Landroid/support/v17/leanback/app/GuidedStepFragment$4;

    invoke-direct {v2, v6}, Landroid/support/v17/leanback/app/GuidedStepFragment$4;-><init>(Landroid/support/v17/leanback/app/GuidedStepFragment;)V

    iget-object v4, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;-><init>(Ljava/util/List;Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;Landroid/support/v17/leanback/widget/GuidedActionsStylist;Z)V

    iput-object v10, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mSubAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    .line 1134
    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;-><init>()V

    iput-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapterGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    .line 1135
    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapterGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    iget-object v1, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v2, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->addAdpter(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V

    .line 1136
    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapterGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    iget-object v1, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mSubAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->addAdpter(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V

    .line 1137
    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapterGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->setEditListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;)V

    .line 1138
    .end local v19    # "editListener":Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;
    .local v1, "editListener":Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;
    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;)V

    .line 1140
    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v2, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1141
    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getSubActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getSubActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v2, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mSubAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1144
    :cond_0
    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v2, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1145
    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1148
    nop

    .line 1149
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1150
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1151
    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1152
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_1

    .line 1155
    :cond_1
    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_2

    iget-object v0, v6, Landroid/support/v17/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    goto :goto_0

    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    .line 1156
    .local v0, "ctx":Landroid/content/Context;
    :goto_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1157
    .local v2, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$attr;->guidedActionContentWidthWeightTwoPanels:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1159
    sget v3, Landroid/support/v17/leanback/R$id;->action_fragment_root:I

    invoke-virtual {v11, v3}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1160
    .local v3, "actionsRoot":Landroid/view/View;
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    .line 1161
    .local v4, "weight":F
    nop

    .line 1162
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1163
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1164
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1169
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v2    # "typedValue":Landroid/util/TypedValue;
    .end local v3    # "actionsRoot":Landroid/view/View;
    .end local v4    # "weight":F
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    :goto_1
    invoke-virtual {v6, v8, v11, v7}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onCreateBackgroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 1170
    .local v0, "backgroundView":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 1171
    sget v2, Landroid/support/v17/leanback/R$id;->guidedstep_background_view_root:I

    invoke-virtual {v11, v2}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 1173
    .local v2, "backgroundViewRoot":Landroid/widget/FrameLayout;
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1176
    .end local v2    # "backgroundViewRoot":Landroid/widget/FrameLayout;
    :cond_4
    return-object v11
.end method

.method public onDestroyView()V
    .locals 1

    .line 1041
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidanceStylist;->onDestroyView()V

    .line 1042
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onDestroyView()V

    .line 1043
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onDestroyView()V

    .line 1044
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    .line 1045
    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mSubAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    .line 1046
    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    .line 1047
    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapterGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    .line 1048
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1049
    return-void
.end method

.method public onGuidedActionClicked(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 0
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 356
    return-void
.end method

.method public onGuidedActionEditCanceled(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 0
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 452
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onGuidedActionEdited(Landroid/support/v17/leanback/widget/GuidedAction;)V

    .line 453
    return-void
.end method

.method public onGuidedActionEdited(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 0
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 443
    return-void
.end method

.method public onGuidedActionEditedAndProceed(Landroid/support/v17/leanback/widget/GuidedAction;)J
    .locals 2
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 465
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onGuidedActionEdited(Landroid/support/v17/leanback/widget/GuidedAction;)V

    .line 466
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public onGuidedActionFocused(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 0
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 433
    return-void
.end method

.method protected onProvideFragmentTransitions()V
    .locals 7

    .line 898
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 899
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getUiStyle()I

    move-result v0

    .line 900
    .local v0, "uiStyle":I
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 901
    const v4, 0x800005

    invoke-static {v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object v4

    .line 902
    .local v4, "enterTransition":Ljava/lang/Object;
    sget v5, Landroid/support/v17/leanback/R$id;->guidedstep_background:I

    invoke-static {v4, v5, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->exclude(Ljava/lang/Object;IZ)V

    .line 903
    sget v5, Landroid/support/v17/leanback/R$id;->guidedactions_sub_list_background:I

    invoke-static {v4, v5, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->exclude(Ljava/lang/Object;IZ)V

    .line 905
    invoke-static {p0, v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    .line 907
    invoke-static {v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeTransition(I)Ljava/lang/Object;

    move-result-object v1

    .line 909
    .local v1, "fade":Ljava/lang/Object;
    sget v5, Landroid/support/v17/leanback/R$id;->guidedactions_sub_list_background:I

    invoke-static {v1, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;I)V

    .line 910
    invoke-static {v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->createChangeBounds(Z)Ljava/lang/Object;

    move-result-object v5

    .line 911
    .local v5, "changeBounds":Ljava/lang/Object;
    invoke-static {v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v2

    .line 912
    .local v2, "sharedElementTransition":Ljava/lang/Object;
    invoke-static {v2, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 913
    invoke-static {v2, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 914
    invoke-static {p0, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->setSharedElementEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    .line 915
    .end local v1    # "fade":Ljava/lang/Object;
    .end local v2    # "sharedElementTransition":Ljava/lang/Object;
    .end local v4    # "enterTransition":Ljava/lang/Object;
    .end local v5    # "changeBounds":Ljava/lang/Object;
    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    .line 916
    iget v5, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->entranceTransitionType:I

    if-nez v5, :cond_1

    .line 917
    invoke-static {v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeTransition(I)Ljava/lang/Object;

    move-result-object v1

    .line 919
    .restart local v1    # "fade":Ljava/lang/Object;
    sget v5, Landroid/support/v17/leanback/R$id;->guidedstep_background:I

    invoke-static {v1, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;I)V

    .line 920
    const v5, 0x800007

    invoke-static {v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object v5

    .line 922
    .local v5, "slideFromSide":Ljava/lang/Object;
    sget v6, Landroid/support/v17/leanback/R$id;->content_fragment:I

    invoke-static {v5, v6}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;I)V

    .line 923
    sget v6, Landroid/support/v17/leanback/R$id;->action_fragment_root:I

    invoke-static {v5, v6}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;I)V

    .line 924
    invoke-static {v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v2

    .line 925
    .local v2, "enterTransition":Ljava/lang/Object;
    invoke-static {v2, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 926
    invoke-static {v2, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 927
    invoke-static {p0, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    .line 928
    .end local v1    # "fade":Ljava/lang/Object;
    .end local v2    # "enterTransition":Ljava/lang/Object;
    .end local v5    # "slideFromSide":Ljava/lang/Object;
    goto :goto_0

    .line 929
    :cond_1
    const/16 v1, 0x50

    invoke-static {v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object v1

    .line 931
    .local v1, "slideFromBottom":Ljava/lang/Object;
    sget v5, Landroid/support/v17/leanback/R$id;->guidedstep_background_view_root:I

    invoke-static {v1, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;I)V

    .line 932
    invoke-static {v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v2

    .line 933
    .restart local v2    # "enterTransition":Ljava/lang/Object;
    invoke-static {v2, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 934
    invoke-static {p0, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    .line 937
    .end local v1    # "slideFromBottom":Ljava/lang/Object;
    .end local v2    # "enterTransition":Ljava/lang/Object;
    :goto_0
    invoke-static {p0, v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->setSharedElementEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    goto :goto_1

    .line 938
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 940
    invoke-static {p0, v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    .line 942
    invoke-static {p0, v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->setSharedElementEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    .line 945
    :cond_3
    :goto_1
    const v1, 0x800003

    invoke-static {v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object v1

    .line 946
    .local v1, "exitTransition":Ljava/lang/Object;
    sget v2, Landroid/support/v17/leanback/R$id;->guidedstep_background:I

    invoke-static {v1, v2, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->exclude(Ljava/lang/Object;IZ)V

    .line 947
    sget v2, Landroid/support/v17/leanback/R$id;->guidedactions_sub_list_background:I

    invoke-static {v1, v2, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->exclude(Ljava/lang/Object;IZ)V

    .line 949
    invoke-static {p0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->setExitTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    .line 951
    .end local v0    # "uiStyle":I
    .end local v1    # "exitTransition":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method public onProvideTheme()I
    .locals 1

    .line 316
    const/4 v0, -0x1

    return v0
.end method

.method final onRestoreActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
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

    .line 1208
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1209
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedAction;

    .line 1210
    .local v2, "action":Landroid/support/v17/leanback/widget/GuidedAction;
    invoke-static {v2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->isSaveEnabled(Landroid/support/v17/leanback/widget/GuidedAction;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1211
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getAutoRestoreKey(Landroid/support/v17/leanback/widget/GuidedAction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/support/v17/leanback/widget/GuidedAction;->onRestoreInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1208
    .end local v2    # "action":Landroid/support/v17/leanback/widget/GuidedAction;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1214
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method final onRestoreButtonActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
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

    .line 1217
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1218
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedAction;

    .line 1219
    .local v2, "action":Landroid/support/v17/leanback/widget/GuidedAction;
    invoke-static {v2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->isSaveEnabled(Landroid/support/v17/leanback/widget/GuidedAction;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1220
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getButtonAutoRestoreKey(Landroid/support/v17/leanback/widget/GuidedAction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/support/v17/leanback/widget/GuidedAction;->onRestoreInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1217
    .end local v2    # "action":Landroid/support/v17/leanback/widget/GuidedAction;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1223
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1181
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1182
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->action_fragment:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1183
    return-void
.end method

.method final onSaveActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .param p2, "outState"    # Landroid/os/Bundle;
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

    .line 1226
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1227
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedAction;

    .line 1228
    .local v2, "action":Landroid/support/v17/leanback/widget/GuidedAction;
    invoke-static {v2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->isSaveEnabled(Landroid/support/v17/leanback/widget/GuidedAction;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1229
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getAutoRestoreKey(Landroid/support/v17/leanback/widget/GuidedAction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/support/v17/leanback/widget/GuidedAction;->onSaveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1226
    .end local v2    # "action":Landroid/support/v17/leanback/widget/GuidedAction;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1232
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method final onSaveButtonActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .param p2, "outState"    # Landroid/os/Bundle;
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

    .line 1235
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1236
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedAction;

    .line 1237
    .local v2, "action":Landroid/support/v17/leanback/widget/GuidedAction;
    invoke-static {v2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->isSaveEnabled(Landroid/support/v17/leanback/widget/GuidedAction;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1238
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getButtonAutoRestoreKey(Landroid/support/v17/leanback/widget/GuidedAction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/support/v17/leanback/widget/GuidedAction;->onSaveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1235
    .end local v2    # "action":Landroid/support/v17/leanback/widget/GuidedAction;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1241
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1248
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1249
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onSaveActions(Ljava/util/List;Landroid/os/Bundle;)V

    .line 1250
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onSaveButtonActions(Ljava/util/List;Landroid/os/Bundle;)V

    .line 1251
    return-void
.end method

.method public onSubGuidedActionClicked(Landroid/support/v17/leanback/widget/GuidedAction;)Z
    .locals 1
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method public openInEditMode(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 1
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 1356
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->openInEditMode(Landroid/support/v17/leanback/widget/GuidedAction;)V

    .line 1357
    return-void
.end method

.method public popBackStackToGuidedStepFragment(Ljava/lang/Class;I)V
    .locals 7
    .param p1, "guidedStepFragmentClass"    # Ljava/lang/Class;
    .param p2, "flags"    # I

    .line 1294
    const-class v0, Landroid/support/v17/leanback/app/GuidedStepFragment;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1295
    return-void

    .line 1297
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1298
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 1299
    .local v1, "entryCount":I
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1300
    .local v2, "className":Ljava/lang/String;
    if-lez v1, :cond_2

    .line 1301
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 1302
    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v4

    .line 1303
    .local v4, "entry":Landroid/app/FragmentManager$BackStackEntry;
    invoke-interface {v4}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getGuidedStepFragmentClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1304
    .local v5, "entryClassName":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1305
    invoke-interface {v4}, Landroid/app/FragmentManager$BackStackEntry;->getId()I

    move-result v6

    invoke-virtual {v0, v6, p2}, Landroid/app/FragmentManager;->popBackStackImmediate(II)Z

    .line 1306
    return-void

    .line 1301
    .end local v4    # "entry":Landroid/app/FragmentManager$BackStackEntry;
    .end local v5    # "entryClassName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1310
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method runImeAnimations(Z)V
    .locals 2
    .param p1, "entering"    # Z

    .line 1407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1408
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    if-eqz p1, :cond_0

    .line 1409
    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/GuidanceStylist;->onImeAppearing(Ljava/util/List;)V

    .line 1410
    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onImeAppearing(Ljava/util/List;)V

    .line 1411
    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onImeAppearing(Ljava/util/List;)V

    goto :goto_0

    .line 1413
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/GuidanceStylist;->onImeDisappearing(Ljava/util/List;)V

    .line 1414
    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onImeDisappearing(Ljava/util/List;)V

    .line 1415
    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onImeDisappearing(Ljava/util/List;)V

    .line 1417
    :goto_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1418
    .local v1, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1419
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1420
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

    .line 818
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    iput-object p1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    .line 819
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V

    .line 822
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

    .line 833
    .local p1, "diffCallback":Landroid/support/v17/leanback/widget/DiffCallback;, "Landroid/support/v17/leanback/widget/DiffCallback<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setDiffCallback(Landroid/support/v17/leanback/widget/DiffCallback;)V

    .line 834
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

    .line 731
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    iput-object p1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    .line 732
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V

    .line 735
    :cond_0
    return-void
.end method

.method public setEntranceTransitionType(I)V
    .locals 0
    .param p1, "transitionType"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1347
    iput p1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->entranceTransitionType:I

    .line 1348
    return-void
.end method

.method public setSelectedActionPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 864
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    .line 865
    return-void
.end method

.method public setSelectedButtonActionPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 765
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    .line 766
    return-void
.end method

.method public setUiStyle(I)V
    .locals 4
    .param p1, "style"    # I

    .line 980
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getUiStyle()I

    move-result v0

    .line 981
    .local v0, "oldStyle":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 982
    .local v1, "arguments":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 983
    .local v2, "isNew":Z
    if-nez v1, :cond_0

    .line 984
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v1, v3

    .line 985
    const/4 v2, 0x1

    .line 987
    :cond_0
    const-string v3, "uiStyle"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 989
    if-eqz v2, :cond_1

    .line 990
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->setArguments(Landroid/os/Bundle;)V

    .line 992
    :cond_1
    if-eq p1, v0, :cond_2

    .line 993
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onProvideFragmentTransitions()V

    .line 995
    :cond_2
    return-void
.end method
