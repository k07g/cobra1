package cmd

import "github.com/spf13/cobra"

var (
	rootCmd = &cobra.Command{
		Use:   "cobra1",
		Short: "Cobra1 sample CLI",
		Long:  `Cobra1 is a sample CLI tool`,
	}
)

// Execute executes the root command.
func Execute() error {
	return rootCmd.Execute()
}
