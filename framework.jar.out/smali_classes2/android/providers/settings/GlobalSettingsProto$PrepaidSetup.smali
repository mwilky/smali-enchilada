.class public final Landroid/providers/settings/GlobalSettingsProto$PrepaidSetup;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PrepaidSetup"
.end annotation


# static fields
.field public static final DATA_SERVICE_URL:J = 0x10b00000001L

.field public static final DETECTION_REDIR_HOST:J = 0x10b00000003L

.field public static final DETECTION_TARGET_URL:J = 0x10b00000002L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/providers/settings/GlobalSettingsProto;

    .line 874
    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$PrepaidSetup;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
