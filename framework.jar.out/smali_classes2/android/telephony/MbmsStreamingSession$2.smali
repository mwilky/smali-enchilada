.class Landroid/telephony/MbmsStreamingSession$2;
.super Ljava/lang/Object;
.source "MbmsStreamingSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/MbmsStreamingSession;->create(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsStreamingSessionCallback;)Landroid/telephony/MbmsStreamingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/telephony/mbms/MbmsStreamingSessionCallback;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/MbmsStreamingSessionCallback;I)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/MbmsStreamingSession$2;->val$callback:Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    iput p2, p0, Landroid/telephony/MbmsStreamingSession$2;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession$2;->val$callback:Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    iget v1, p0, Landroid/telephony/MbmsStreamingSession$2;->val$result:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/MbmsStreamingSessionCallback;->onError(ILjava/lang/String;)V

    return-void
.end method
