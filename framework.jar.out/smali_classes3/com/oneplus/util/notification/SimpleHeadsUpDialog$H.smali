.class final Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;
.super Landroid/os/Handler;
.source "SimpleHeadsUpDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/util/notification/SimpleHeadsUpDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final HIDE:I = 0x2

.field private static final REMOVE_WINDOW:I = 0x3

.field private static final SHOW:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;


# direct methods
.method public constructor <init>(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    invoke-static {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->access$600(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->access$500(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    invoke-static {v0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->access$400(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
