.class public Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;
.super Ljava/lang/Object;
.source "OPLocalRingtoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RingtoneData"
.end annotation


# instance fields
.field public filepath:Ljava/lang/String;

.field public isCheck:Z

.field public mUri:Landroid/net/Uri;

.field public mimetype:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->title:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->isCheck:Z

    return-void
.end method
