.class Lcom/android/internal/app/ResolverActivity$3;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/android/internal/widget/ResolverDrawerLayout$OnFullscreenChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullscreenChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mOriginSysUiVis:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    iput v1, v0, Lcom/android/internal/app/ResolverActivity;->mOriginSysUiVis:I

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget v1, v1, Lcom/android/internal/app/ResolverActivity;->mOriginSysUiVis:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Lcom/android/internal/app/ResolverActivity;->mWhiteFullscreenSysUiVis:I

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget v1, v1, Lcom/android/internal/app/ResolverActivity;->mWhiteFullscreenSysUiVis:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget v1, v1, Lcom/android/internal/app/ResolverActivity;->mOriginSysUiVis:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method
