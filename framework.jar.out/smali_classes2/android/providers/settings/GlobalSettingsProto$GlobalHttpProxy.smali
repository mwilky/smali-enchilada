.class public final Landroid/providers/settings/GlobalSettingsProto$GlobalHttpProxy;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GlobalHttpProxy"
.end annotation


# static fields
.field public static final EXCLUSION_LIST:J = 0x10b00000003L

.field public static final HOST:J = 0x10b00000001L

.field public static final PAC:J = 0x10b00000004L

.field public static final PORT:J = 0x10b00000002L

.field public static final SETTING_UI_ENABLED:J = 0x10b00000005L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .locals 0

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$GlobalHttpProxy;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
