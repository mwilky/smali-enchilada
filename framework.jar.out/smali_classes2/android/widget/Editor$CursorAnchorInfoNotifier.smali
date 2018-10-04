.class final Landroid/widget/Editor$CursorAnchorInfoNotifier;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CursorAnchorInfoNotifier"
.end annotation


# instance fields
.field final mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field final mTmpIntOffset:[I

.field final mViewToScreenMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public updatePosition(IIZZ)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v1, :cond_e

    iget v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v3, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isCursorAnchorInfoEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    iget-object v3, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_4

    return-void

    :cond_4
    iget-object v10, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v10}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    iget-object v4, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    iget-object v4, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    invoke-virtual {v10, v11, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v4, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v4, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    iget-object v4, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    iget-object v7, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-float v7, v7

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v4, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v4, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    int-to-float v12, v4

    iget-object v4, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    int-to-float v13, v4

    iget-object v4, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    instance-of v4, v14, Landroid/text/Spannable;

    if-eqz v4, :cond_7

    move-object v15, v14

    check-cast v15, Landroid/text/Spannable;

    invoke-static {v15}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    invoke-static {v15}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    if-ge v5, v4, :cond_5

    move v7, v5

    move v5, v4

    move v4, v7

    :cond_5
    move v9, v4

    move v7, v5

    if-ltz v9, :cond_6

    if-ge v9, v7, :cond_6

    move v6, v8

    nop

    :cond_6
    move/from16 v16, v6

    if-eqz v16, :cond_7

    invoke-interface {v14, v9, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v10, v9, v8}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v4, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    move-object v5, v10

    move v6, v9

    move/from16 v17, v7

    move-object/from16 v18, v8

    move v8, v12

    move/from16 v19, v9

    move v9, v13

    invoke-virtual/range {v4 .. v9}, Landroid/widget/TextView;->populateCharacterBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;IIFF)V

    :cond_7
    if-ltz v11, :cond_d

    move v15, v11

    invoke-virtual {v3, v15}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v3, v15}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    add-float v8, v4, v12

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    int-to-float v4, v4

    add-float v7, v4, v13

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v4

    int-to-float v4, v4

    add-float v16, v4, v13

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v4

    int-to-float v4, v4

    add-float v6, v4, v13

    iget-object v4, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8, v7}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v17

    iget-object v4, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8, v6}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v18

    const/4 v4, 0x0

    if-nez v17, :cond_8

    if-eqz v18, :cond_9

    :cond_8
    or-int/lit8 v4, v4, 0x1

    :cond_9
    if-eqz v17, :cond_a

    if-nez v18, :cond_b

    :cond_a
    or-int/lit8 v4, v4, 0x2

    :cond_b
    invoke-virtual {v3, v15}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v5

    if-eqz v5, :cond_c

    or-int/lit8 v4, v4, 0x4

    :cond_c
    move/from16 v19, v4

    move-object v4, v10

    move v5, v8

    move/from16 v20, v6

    move v6, v7

    move/from16 v21, v7

    move/from16 v7, v16

    move/from16 v22, v8

    move/from16 v8, v20

    move/from16 v23, v9

    move/from16 v9, v19

    invoke-virtual/range {v4 .. v9}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    :cond_d
    iget-object v4, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v10}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    return-void

    :cond_e
    :goto_0
    return-void
.end method
