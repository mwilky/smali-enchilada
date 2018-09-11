.class Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    .line 149
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 153
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->requestLayout()V

    .line 154
    return-void
.end method
