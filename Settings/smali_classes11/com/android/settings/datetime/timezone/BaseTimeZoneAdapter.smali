.class public Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseTimeZoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;,
        Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;,
        Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$HeaderViewHolder;,
        Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final TYPE_HEADER:I = 0x0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final TYPE_ITEM:I = 0x1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mFilter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter<",
            "TT;>.ArrayFilter;"
        }
    .end annotation
.end field

.field private final mHeaderText:Ljava/lang/CharSequence;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mLocale:Ljava/util/Locale;

.field private final mOnListItemClickListener:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mOriginalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mShowHeader:Z

.field private final mShowItemSummary:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;Ljava/util/Locale;ZLjava/lang/CharSequence;)V
    .locals 2
    .param p5    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener<",
            "TT;>;",
            "Ljava/util/Locale;",
            "Z",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mOriginalItems:Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mItems:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mOnListItemClickListener:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;

    iput-object p3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mLocale:Ljava/util/Locale;

    iput-boolean p4, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mShowItemSummary:Z

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mShowHeader:Z

    iput-object p5, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mOriginalItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mItems:Ljava/util/List;

    return-object p1
.end method

.method private getHeaderCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mShowHeader:Z

    return v0
.end method

.method private isPositionHeader(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mShowHeader:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getDataItem(I)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getHeaderCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;

    return-object v0
.end method

.method public getFilter()Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter<",
            "TT;>.ArrayFilter;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mFilter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;

    invoke-direct {v0, p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;-><init>(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)V

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mFilter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mFilter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getHeaderCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->isPositionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getDataItem(I)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;->getItemId()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->isPositionHeader(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$HeaderViewHolder;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$HeaderViewHolder;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$HeaderViewHolder;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;

    invoke-virtual {p0, p2}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getDataItem(I)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->setAdapterItem(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;)V

    iget-object v1, v0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->mSummaryFrame:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mShowItemSummary:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected viewType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const v2, 0x7f0d02ab

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;

    iget-object v3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mOnListItemClickListener:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;

    invoke-direct {v2, v1, v3}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;-><init>(Landroid/view/View;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;)V

    return-object v2

    :pswitch_1
    const v2, 0x7f0d01db

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$HeaderViewHolder;

    invoke-direct {v2, v1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setHasStableIds(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method
