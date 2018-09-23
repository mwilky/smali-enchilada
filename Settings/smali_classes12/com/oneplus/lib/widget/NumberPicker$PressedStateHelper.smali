.class Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lcom/oneplus/lib/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/NumberPicker;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mMode:I

    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public buttonTapped(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mMode:I

    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mMode:I

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1200(Lcom/oneplus/lib/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1202(Lcom/oneplus/lib/widget/NumberPicker;Z)Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1402(Lcom/oneplus/lib/widget/NumberPicker;Z)Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1400(Lcom/oneplus/lib/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v3}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 5

    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1400(Lcom/oneplus/lib/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, p0, v3, v4}, Lcom/oneplus/lib/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1480(Lcom/oneplus/lib/widget/NumberPicker;I)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v3}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1200(Lcom/oneplus/lib/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, p0, v3, v4}, Lcom/oneplus/lib/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1280(Lcom/oneplus/lib/widget/NumberPicker;I)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_1

    :pswitch_3
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1402(Lcom/oneplus/lib/widget/NumberPicker;Z)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v3}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1202(Lcom/oneplus/lib/widget/NumberPicker;Z)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    nop

    :goto_0
    nop

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
