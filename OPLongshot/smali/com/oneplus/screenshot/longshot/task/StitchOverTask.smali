.class public Lcom/oneplus/screenshot/longshot/task/StitchOverTask;
.super Lcom/oneplus/screenshot/longshot/task/StitchNextTask;
.source "StitchOverTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchOverTask"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lcom/oneplus/screenshot/longshot/match/Matcher;
    .locals 1

    new-instance v0, Lcom/oneplus/screenshot/longshot/match/StitchOverMatcher;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/StitchOverMatcher;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
