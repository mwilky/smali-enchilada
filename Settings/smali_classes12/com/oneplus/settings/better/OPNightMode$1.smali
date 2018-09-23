.class Lcom/oneplus/settings/better/OPNightMode$1;
.super Ljava/lang/Object;
.source "OPNightMode.java"

# interfaces
.implements Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/OPNightMode;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPNightMode;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPNightMode;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    iput p2, p0, Lcom/oneplus/settings/better/OPNightMode$1;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/oneplus/lib/widget/TimePicker;II)V
    .locals 7

    invoke-static {p2, p3}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/settings/better/OPNightMode$1;->val$dialogId:I

    const/4 v2, 0x1

    const v3, 0x7f1211bd

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPNightMode;->access$000(Lcom/oneplus/settings/better/OPNightMode;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v6}, Lcom/oneplus/settings/better/OPNightMode;->access$100(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPNightMode;->access$000(Lcom/oneplus/settings/better/OPNightMode;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/app/ColorDisplayController;->setCustomStartTime(Ljava/time/LocalTime;)Z

    :goto_0
    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPNightMode;->access$000(Lcom/oneplus/settings/better/OPNightMode;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v6}, Lcom/oneplus/settings/better/OPNightMode;->access$200(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPNightMode;->access$000(Lcom/oneplus/settings/better/OPNightMode;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/app/ColorDisplayController;->setCustomEndTime(Ljava/time/LocalTime;)Z

    :goto_1
    return-void
.end method
