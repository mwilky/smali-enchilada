.class Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;
.super Ljava/lang/Object;
.source "GuidedActionAdapter.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/support/v17/leanback/widget/ImeKeyMonitor$ImeKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GuidedActionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionEditListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V
    .locals 0

    .line 527
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "handled":Z
    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 538
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 541
    const/4 v0, 0x1

    .line 542
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v1, v2, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->fillAndStay(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V

    goto :goto_1

    .line 536
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v1, v2, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->fillAndGoNext(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V

    .line 537
    const/4 v0, 0x1

    .line 544
    :cond_2
    :goto_1
    return v0
.end method

.method public onKeyPreIme(Landroid/widget/EditText;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 550
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 551
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v1, v2, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->fillAndStay(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V

    .line 552
    return v0

    .line 553
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 554
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 555
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v1, v2, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->fillAndGoNext(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V

    .line 556
    return v0

    .line 558
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
