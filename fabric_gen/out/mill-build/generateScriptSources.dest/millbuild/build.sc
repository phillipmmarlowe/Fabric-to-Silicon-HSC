package millbuild

import _root_.mill.runner.MillBuildRootModule

object MiscInfo_build {
  implicit lazy val millBuildRootModuleInfo: _root_.mill.runner.MillBuildRootModule.Info = _root_.mill.runner.MillBuildRootModule.Info(
    Vector("/home/pmarlowe/Fabric-to-Silicon/fabric_gen/out/mill-launcher/0.11.5.jar").map(_root_.os.Path(_)),
    _root_.os.Path("/home/pmarlowe/Fabric-to-Silicon/fabric_gen"),
    _root_.os.Path("/home/pmarlowe/Fabric-to-Silicon/fabric_gen"),
    _root_.scala.Seq()
  )
  implicit lazy val millBaseModuleInfo: _root_.mill.main.RootModule.Info = _root_.mill.main.RootModule.Info(
    millBuildRootModuleInfo.projectRoot,
    _root_.mill.define.Discover[build]
  )
}
import MiscInfo_build.{millBuildRootModuleInfo, millBaseModuleInfo}
object build extends build
class build extends _root_.mill.main.RootModule {

//MILL_ORIGINAL_FILE_PATH=/home/pmarlowe/Fabric-to-Silicon/fabric_gen/build.sc
//MILL_USER_CODE_START_MARKER
// import Mill dependency
import mill._
import mill.define.Sources
import mill.modules.Util
import mill.scalalib.TestModule.ScalaTest
import scalalib._
// support BSP
import mill.bsp._

object fts extends ScalaModule { m =>
  override def millSourcePath = os.pwd
  override def scalaVersion = "2.13.12"
  override def scalacOptions = Seq(
    "-language:reflectiveCalls",
    "-deprecation",
    "-feature",
    "-Xcheckinit",
    "-Ymacro-annotations",
  )
  override def ivyDeps = Agg(
    ivy"org.chipsalliance::chisel:6.0.0",
    ivy"com.lihaoyi::upickle:1.4.3",
    ivy"com.lihaoyi::scalatags:0.8.2",
    ivy"io.dylemma::spac-core:0.12.0",
    ivy"io.dylemma::xml-spac:0.12.0",
    ivy"io.dylemma::xml-spac-javax:0.12.0",
    ivy"io.dylemma::xml-spac-fs2-data:0.12.0",
    ivy"org.typelevel::cats-core:2.8.0"
  )

  override def scalacPluginIvyDeps = Agg(
    ivy"org.chipsalliance:::chisel-plugin:6.0.0",
  )
}

//ivy"org.scalamacros:::paradise:2.1.1",

}