.class public final Lcom/android/server/content/ContentService$ObserverCall;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverCall"
.end annotation


# instance fields
.field final mNode:Lcom/android/server/content/ContentService$ObserverNode;

.field final mObserver:Landroid/database/IContentObserver;

.field final mObserverUserId:I

.field final mSelfChange:Z

.field final mUid:I


# direct methods
.method constructor <init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverCall;->mNode:Lcom/android/server/content/ContentService$ObserverNode;

    iput-object p2, p0, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    iput-boolean p3, p0, Lcom/android/server/content/ContentService$ObserverCall;->mSelfChange:Z

    iput p4, p0, Lcom/android/server/content/ContentService$ObserverCall;->mObserverUserId:I

    iput p5, p0, Lcom/android/server/content/ContentService$ObserverCall;->mUid:I

    return-void
.end method
