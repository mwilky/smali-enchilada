.class Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v14/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollToPreferenceObserver"
.end annotation


# instance fields
.field private final mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private final mKey:Ljava/lang/String;

.field private final mList:Landroid/support/v7/widget/RecyclerView;

.field private final mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "list"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "preference"    # Landroid/support/v7/preference/Preference;
    .param p4, "key"    # Ljava/lang/String;

    .line 719
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 720
    iput-object p1, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 721
    iput-object p2, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 722
    iput-object p3, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mPreference:Landroid/support/v7/preference/Preference;

    .line 723
    iput-object p4, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 724
    return-void
.end method

.method private scrollToPreference()V
    .locals 2

    .line 727
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 729
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mPreference:Landroid/support/v7/preference/Preference;

    .line 731
    invoke-interface {v0, v1}, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Landroid/support/v7/preference/Preference;)I

    move-result v0

    .local v0, "position":I
    goto :goto_0

    .line 733
    .end local v0    # "position":I
    :cond_0
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 734
    invoke-interface {v0, v1}, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    .line 736
    .restart local v0    # "position":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 737
    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 739
    :cond_1
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 743
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 744
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 748
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 749
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 753
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 754
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 758
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 759
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 768
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 769
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 763
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 764
    return-void
.end method
