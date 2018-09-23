.class public abstract Lcom/oneplus/lib/preference/PreferenceGroup;
.super Lcom/oneplus/lib/preference/Preference;
.source "PreferenceGroup.java"

# interfaces
.implements Lcom/oneplus/lib/preference/GenericInflater$Parent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/preference/Preference;",
        "Lcom/oneplus/lib/preference/GenericInflater$Parent<",
        "Lcom/oneplus/lib/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field private mAttachedToActivity:Z

.field private mCurrentPreferenceOrder:I

.field private mOrderingAsAdded:Z

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mAttachedToActivity:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->PreferenceGroup_android_orderingFromXml:I

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private removePreferenceInt(Lcom/oneplus/lib/preference/Preference;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->onPrepareForRemoval()V

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addItemFromInflater(Lcom/oneplus/lib/preference/Preference;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->addPreference(Lcom/oneplus/lib/preference/Preference;)Z

    return-void
.end method

.method public bridge synthetic addItemFromInflater(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->addItemFromInflater(Lcom/oneplus/lib/preference/Preference;)V

    return-void
.end method

.method public addPreference(Lcom/oneplus/lib/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getOrder()I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/preference/Preference;->setOrder(I)V

    :cond_1
    instance-of v0, p1, Lcom/oneplus/lib/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/preference/PreferenceGroup;

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->onPrepareAddPreference(Lcom/oneplus/lib/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_4

    mul-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/preference/Preference;->onAttachedToHierarchy(Lcom/oneplus/lib/preference/PreferenceManager;)V

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mAttachedToActivity:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->onAttachedToActivity()V

    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->notifyHierarchyChanged()V

    return v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreference(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreference(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreference(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v2

    :cond_1
    instance-of v4, v2, Lcom/oneplus/lib/preference/PreferenceGroup;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Lcom/oneplus/lib/preference/PreferenceGroup;

    invoke-virtual {v4, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPreference(I)Lcom/oneplus/lib/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/preference/Preference;

    return-object v0
.end method

.method public getPreferenceCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isOrderingAsAdded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    return v0
.end method

.method public notifyDependencyChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreference(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/oneplus/lib/preference/Preference;->onParentChanged(Lcom/oneplus/lib/preference/Preference;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 3

    invoke-super {p0}, Lcom/oneplus/lib/preference/Preference;->onAttachedToActivity()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mAttachedToActivity:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreference(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/preference/Preference;->onAttachedToActivity()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPrepareAddPreference(Lcom/oneplus/lib/preference/Preference;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/lib/preference/Preference;->onParentChanged(Lcom/oneplus/lib/preference/Preference;Z)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/lib/preference/Preference;->onPrepareForRemoval()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mAttachedToActivity:Z

    return-void
.end method

.method public removeAll()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/preference/Preference;

    invoke-direct {p0, v2}, Lcom/oneplus/lib/preference/PreferenceGroup;->removePreferenceInt(Lcom/oneplus/lib/preference/Preference;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->notifyHierarchyChanged()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removePreference(Lcom/oneplus/lib/preference/Preference;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->removePreferenceInt(Lcom/oneplus/lib/preference/Preference;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->notifyHierarchyChanged()V

    return v0
.end method

.method public setOrderingAsAdded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mOrderingAsAdded:Z

    return-void
.end method

.method sortPreferences()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
