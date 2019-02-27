.class Lcom/android/internal/widget/ResolverDrawerLayout$6;
.super Ljava/lang/Object;
.source "ResolverDrawerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ResolverDrawerLayout;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ResolverDrawerLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 1057
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$6;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1060
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$6;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->access$900(Lcom/android/internal/widget/ResolverDrawerLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$6;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dispatchOnDismissed()V

    .line 1063
    :cond_0
    return-void
.end method
