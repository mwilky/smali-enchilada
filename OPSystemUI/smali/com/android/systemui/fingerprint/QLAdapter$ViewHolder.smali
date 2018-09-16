.class public Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "QLAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/QLAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 36
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;->mView:Landroid/view/View;

    .line 39
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;->mIntent:Landroid/content/Intent;

    .line 47
    return-void
.end method
