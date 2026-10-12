.class public Lcom/anymediacloud/iptv/standard/ForceTV;
.super Ljava/lang/Object;


# static fields
.field private static final MEMORY:I = 0x1400000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/gsoft/mitv/MainActivity;->loadlib()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native start(II)I
.end method

.method public start(I)V
    .locals 1

    const/high16 v0, 0x1400000

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/anymediacloud/iptv/standard/ForceTV;->start(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public native stop()I
.end method
