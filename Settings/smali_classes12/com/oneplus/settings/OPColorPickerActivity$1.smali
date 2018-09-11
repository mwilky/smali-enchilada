.class Lcom/oneplus/settings/OPColorPickerActivity$1;
.super Ljava/lang/Object;
.source "OPColorPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPColorPickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPColorPickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPColorPickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/OPColorPickerActivity;

    .line 79
    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$1;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 83
    const/4 v0, 0x1

    return v0
.end method
