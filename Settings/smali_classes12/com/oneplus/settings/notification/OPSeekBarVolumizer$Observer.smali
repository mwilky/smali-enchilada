.class final Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;
.super Landroid/database/ContentObserver;
.source "OPSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Observer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 487
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .line 488
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 489
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 493
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 494
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$700(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    .line 495
    return-void
.end method
