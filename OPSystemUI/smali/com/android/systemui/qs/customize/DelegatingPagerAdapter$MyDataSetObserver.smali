.class Lcom/android/systemui/qs/customize/DelegatingPagerAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "DelegatingPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final mParent:Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter$MyDataSetObserver;->mParent:Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;Lcom/android/systemui/qs/customize/DelegatingPagerAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter$MyDataSetObserver;-><init>(Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter$MyDataSetObserver;->mParent:Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter$MyDataSetObserver;->mParent:Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter;->superNotifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/DelegatingPagerAdapter$MyDataSetObserver;->onChanged()V

    return-void
.end method
