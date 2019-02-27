.class Landroid/widget/SearchView$6;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->access$1500(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->access$1300(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->access$1300(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v0, p1, p2, p3}, Landroid/widget/SearchView;->access$1600(Landroid/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->access$1300(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/SearchView$SearchAutoComplete;->access$1700(Landroid/widget/SearchView$SearchAutoComplete;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v4}, Landroid/widget/SearchView;->access$1300(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Landroid/widget/SearchView;->access$1800(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->access$1500(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-static {v4}, Landroid/widget/SearchView;->access$1300(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p2, v3, v4}, Landroid/widget/SearchView;->access$1800(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    return v1
.end method
