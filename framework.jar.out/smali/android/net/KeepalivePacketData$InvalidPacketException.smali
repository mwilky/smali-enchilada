.class public Landroid/net/KeepalivePacketData$InvalidPacketException;
.super Ljava/lang/Exception;
.source "KeepalivePacketData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/KeepalivePacketData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidPacketException"
.end annotation


# instance fields
.field public final error:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Landroid/net/KeepalivePacketData$InvalidPacketException;->error:I

    return-void
.end method
