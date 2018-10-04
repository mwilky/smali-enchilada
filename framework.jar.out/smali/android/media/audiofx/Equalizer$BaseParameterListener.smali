.class Landroid/media/audiofx/Equalizer$BaseParameterListener;
.super Ljava/lang/Object;
.source "Equalizer.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Equalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/Equalizer;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/Equalizer;)V
    .locals 0

    iput-object p1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/Equalizer;Landroid/media/audiofx/Equalizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/Equalizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Equalizer;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-static {v1}, Landroid/media/audiofx/Equalizer;->access$000(Landroid/media/audiofx/Equalizer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-static {v2}, Landroid/media/audiofx/Equalizer;->access$100(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-static {v2}, Landroid/media/audiofx/Equalizer;->access$100(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    move-result-object v2

    move-object v0, v2

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    array-length v4, p3

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-lt v4, v6, :cond_1

    invoke-static {p3, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v1

    array-length v4, p3

    const/16 v7, 0x8

    if-lt v4, v7, :cond_1

    invoke-static {p3, v6}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v2

    :cond_1
    array-length v4, p4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_3

    invoke-static {p4, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v3

    :cond_2
    :goto_0
    move v9, v3

    goto :goto_1

    :cond_3
    array-length v4, p4

    if-ne v4, v6, :cond_2

    invoke-static {p4, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v3

    goto :goto_0

    :goto_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    if-eq v9, v3, :cond_4

    iget-object v4, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    move-object v3, v0

    move v5, p2

    move v6, v1

    move v7, v2

    move v8, v9

    invoke-interface/range {v3 .. v8}, Landroid/media/audiofx/Equalizer$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/Equalizer;IIII)V

    :cond_4
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
