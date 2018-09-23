.class public abstract Lcom/oneplus/lib/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field private mList:Landroid/widget/ListView;

.field private mListOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    sget v0, Lcom/oneplus/commonctrl/R$layout;->preference_list_fragment:I

    iput v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mLayoutResId:I

    new-instance v0, Lcom/oneplus/lib/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/PreferenceFragment$1;-><init>(Lcom/oneplus/lib/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/lib/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/PreferenceFragment$2;-><init>(Lcom/oneplus/lib/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    new-instance v0, Lcom/oneplus/lib/preference/PreferenceFragment$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/PreferenceFragment$3;-><init>(Lcom/oneplus/lib/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/preference/PreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/preference/PreferenceFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->onBindPreferences()V

    return-void
.end method

.method private ensureList()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Content view not yet created"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private postBindPreferences()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private requirePreferenceManager()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->requirePreferenceManager()V

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Lcom/oneplus/lib/preference/PreferenceScreen;)Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceFragment;->setPreferenceScreen(Lcom/oneplus/lib/preference/PreferenceScreen;)V

    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->requirePreferenceManager()V

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/oneplus/lib/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/oneplus/lib/preference/PreferenceScreen;)Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceFragment;->setPreferenceScreen(Lcom/oneplus/lib/preference/PreferenceScreen;)V

    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->ensureList()V

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public hasListView()Z
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const v3, 0x102000a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/ListView;

    if-nez v4, :cond_2

    return v2

    :cond_2
    move-object v4, v3

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-nez v4, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->bindPreferences()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mInitDone:Z

    if-eqz p1, :cond_1

    const-string v0, "android:preferences"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/oneplus/lib/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/preference/PreferenceManager;->setFragment(Lcom/oneplus/lib/preference/PreferenceFragment;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->PreferenceFragment:[I

    sget v2, Lcom/oneplus/commonctrl/R$attr;->op_preferenceFragmentStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->PreferenceFragment_android_layout:I

    iget v2, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v1, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->dispatchActivityDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPreferenceTreeClick(Lcom/oneplus/lib/preference/PreferenceScreen;Lcom/oneplus/lib/preference/Preference;)Z
    .locals 1

    invoke-virtual {p2}, Lcom/oneplus/lib/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/lib/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v0, p0, p2}, Lcom/oneplus/lib/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lcom/oneplus/lib/preference/PreferenceFragment;Lcom/oneplus/lib/preference/Preference;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->dispatchActivityStop()V

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    return-void
.end method

.method public setPreferenceScreen(Lcom/oneplus/lib/preference/PreferenceScreen;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->setPreferences(Lcom/oneplus/lib/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->onUnbindPreferences()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mHavePrefs:Z

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->postBindPreferences()V

    :cond_0
    return-void
.end method
