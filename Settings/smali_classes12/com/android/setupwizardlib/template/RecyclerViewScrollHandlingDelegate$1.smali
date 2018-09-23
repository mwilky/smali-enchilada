.class Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewScrollHandlingDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->startListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate$1;->this$0:Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate$1;->this$0:Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;

    invoke-static {v0}, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->access$100(Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;)Lcom/android/setupwizardlib/template/RequireScrollMixin;

    move-result-object v0

    iget-object v1, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate$1;->this$0:Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;

    invoke-static {v1}, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->access$000(Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    return-void
.end method
